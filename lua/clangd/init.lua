-- Load the LSP module for clangd
local clangd = require('lspconfig').clangd

-- Set the configuration options for clangd
local clangd_config = {
    cmd = {'clangd'};
--    cmd = {'clangd', '-I/usr/include/c++/12.2.1 ', '-I/usr/include/c++/12.2.1/aarch64-alpine-linux-musl ', '--background-index'};
    filetypes = {'c', 'cpp'};
    -- settings = {
    --     clangd = {
    --         arguments = {
    --             '-I/usr/include/c++/12.2.1',
    --             '-I/usr/include/c++/12.2.1/aarch64-alpine-linux-musl'
    --         }
    --     }
    -- }
}

-- Call the setup function to register the LSP
clangd.setup(clangd_config)

