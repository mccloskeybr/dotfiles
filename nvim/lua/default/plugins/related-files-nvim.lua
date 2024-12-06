-- dir1/dir2/file.ext --> (dir1/dir2/, file, ext)
local sep = function(file_path)
  return string.match(file_path, '(.+[\\/])(.+[^%.])(%..+)$')
end

-- :help quickfix-window-function
local format_func = function(info)
	items = vim.fn.getloclist(0, { id = info[id], items = 1 }).items

  -- find amount of padding required
	longest = 0
	for idx = info.start_idx, info.end_idx do
	  label_len = string.len(items[idx].text)
	  if longest < label_len then longest = label_len end
  end

	l = {}
	for idx = info.start_idx, info.end_idx do
	  label = items[idx].text
	  label = label .. string.rep(' ', longest - string.len(label))
	  file = vim.fn.fnamemodify(vim.fn.bufname(items[idx].bufnr), ':t')
	  table.insert(l, label .. ' :: ' .. file)
  end
  return l
end

return {
  'mccloskeybr/related_files.nvim',
  keys = {
    {
      '<Leader>r',
      mode = {'n'},
      function()
        require('related_files').open()
      end,
    }
  },
  config = function()
    require('related_files').setup({
      config = {
        close_on_select = true,
        stop_on_first_hit = true,
        format_func = format_func,
      },
      groups = {

        c_home = {
          is_in_group = function(file_path)
            if vim.g.profile ~= 'HOME' then return false end
            local _, _, ext = sep(file_path)
            return ext == '.c' or ext == '.h'
          end,
          get_files_in_group = function(file_path)
            local dir, name, _ = sep(file_path)
            return {
              { filename = dir .. name .. '.h', text = 'header' },
              { filename = dir .. name .. '.c', text = 'impl' },
            }
          end,
        },

        cpp_work = {
          is_in_group = function(file_path)
            if vim.g.profile ~= 'WORK' then return false end
            local _, _, ext = sep(file_path)
            return ext == '.cc' or ext == '.h'
          end,
          get_files_in_group = function(file_path)
            local dir, name, _ = sep(file_path)

            i = string.find(name, '_test')
            if i ~= nil then name = string.sub(name, 1, i - 1) end

            return {
              { filename = dir .. 'BUILD',                  text = 'build' },
              { filename = dir .. name .. '.h',             text = 'header' },
              { filename = dir .. name .. '.cc',            text = 'impl' },
              { filename = dir .. name .. '_test.cc',       text = 'test' },
              { filename = dir .. 'mock_' .. name .. '.cc', text = 'mock' },
            }
          end,
        },

        proto_work = {
          is_in_group = function(file_path)
            if vim.g.profile ~= 'WORK' then return false end
            local _, _, ext = sep(file_path)
            return ext == '.proto'
          end,
          get_files_in_group = function(file_path)
            local dir, name, _ = sep(file_path)
            return {
              { filename = dir .. 'BUILD',          text = 'build' },
              { filename = dir .. name .. '.proto', text = 'impl' },
            }
          end,
        },

        java_work = {
          is_in_group = function(file_path)
            if vim.g.profile ~= 'WORK' then return false end
            local _, _, ext = sep(file_path)
            return ext == '.java'
          end,
          get_files_in_group = function(file_path)
            local prefix, postfix = string.match(file_path, '(.+)/java/(.+)$')
            if prefix == nil then
              prefix, postfix = string.match(file_path, '(.+)/javatests/(.+)$')
            end

            local dir, name, ext = sep(postfix)
            i = string.find(name, 'Test')
            if i ~= nil then name = string.sub(name, 1, i - 1) end

            return {
              { filename = prefix .. '/java/' .. dir .. 'BUILD',                  text = 'impl build' },
              { filename = prefix .. '/java/' .. dir .. name .. '.java',          text = 'impl' },
              { filename = prefix .. '/javatests/' .. dir .. 'BUILD',             text = 'test build' },
              { filename = prefix .. '/javatests/' .. dir .. name .. 'Test.java', text = 'test' },
            }
          end,
        },

        py_work = {
          is_in_group = function(file_path)
            if vim.g.profile ~= 'WORK' then return false end
            local _, _, ext = sep(file_path)
            return ext == '.py'
          end,
          get_files_in_group = function(file_path)
            local dir, name, _ = sep(file_path)

            i = string.find(name, '_test')
            if i ~= nil then name = string.sub(name, 1, i - 1) end

            return {
              { filename = dir .. 'BUILD',            text = 'build' },
              { filename = dir .. name .. '.py',      text = 'impl' },
              { filename = dir .. name .. '_test.py', text = 'test' },
            }
          end,
        },

      }
    })
  end
}
