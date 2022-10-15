-- Главный файл настройк Неовим

local g = vim.g -- Глобальная переменная
local opt = vim.opt -- Установка опций (глобал и тд)


-- Общие --
opt.mouse = 'a' -- Включение поддержки мышки
opt.clipboard = 'unnamedplus' -- Копиравание/вставка из системного буфера обмена
opt.swapfile = false -- Запрет на создание свап-файла
opt.completeopt = 'menuone,noinsert,noselect' -- Автоматические опции

vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]] -- Не автокомментирует новые линии при переходе

-- Неовим интерфейс
opt.number = true         -- Отображение номер строки
opt.showmatch = true      -- Выделите совпадающую скобку
opt.foldmethod = 'marker' -- ?
opt.colorcolumn = '100'   -- Вертикальная линия (т.е ограничение)
opt.splitright = true     -- Вертикальное разделение вправо
opt.splitbelow = true     -- Горизонтальное разделение вниз
opt.ignorecase = true     -- Игнорировать регистр букв при поиске
opt.smartcase = true      -- Игнорировать строчные буквы для всего шаблона
opt.linebreak = true      -- 
opt.termguicolors = true  --
opt.laststatus= 3         --

-- Табы и отступы
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- Память и ЦП
opt.lazyredraw = true -- Быстрый скроллинг
