local file_exists = function(file_path)
  return vim.fn.filereadable(file_path) == 1
end

-- dir1/dir2/file.ext --> (dir1/dir2/, file, ext)
local sep = function(file_path)
  return string.match(file_path, '(.+[\\/])(.+[^%.])(%..+)$')
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
      },
      related = {

        c_home = {
          is_type = function(file_path)
            if vim.g.profile ~= 'HOME' then return false end
            local _, _, ext = sep(file_path)
            if ext == '.c' or ext == '.h' then return true end
            return false
          end,
          get_related = function(file_path)
            local dir, name, _ = sep(file_path)
            return {
              dir .. name .. '.h',
              dir .. name .. '.c',
            }
          end,
        },

        cpp_work = {
          is_type = function(file_path)
            if vim.g.profile ~= 'WORK' then return false end
            local _, _, ext = sep(file_path)
            if ext == '.cc' or ext == '.h' then return true end
            return false
          end,
          get_related = function(file_path)
            local dir, name, _ = sep(file_path)
            return {
              dir .. 'BUILD',
              dir .. name .. '.h',
              dir .. name .. '.cc',
              dir .. name .. '_test.cc',
              dir .. 'mock_' .. name .. '.cc',
            }
          end,
        },

        proto_work = {
          is_type = function(file_path)
            if vim.g.profile ~= 'WORK' then return false end
            local _, _, ext = sep(file_path)
            if ext == '.proto' then return true end
            return false
          end,
          get_related = function(file_path)
            local dir, name, _ = sep(file_path)
            return {
              dir .. 'BUILD',
              dir .. name .. '.proto',
            }
          end,
        },

      }
    })
  end
}
