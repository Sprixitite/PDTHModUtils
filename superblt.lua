---@meta

---@class BLT_Hooks
---@field OverrideFunction fun(self: BLT_Hooks, class: table, fnName: string, replacement: function)
---@field PostHook         fun(self: BLT_Hooks, class: table, fnName: string, hookName: string, clbck: function)
---@field PreHook          fun(self: BLT_Hooks, class: table, fnName: string, hookName: string, clbck: function)
---@field GetFunction      fun(self: BLT_Hooks, object: table, fnName: string) : function?
---@field GetReturn        fun(self: BLT_Hooks) : ... : any
---@field RegisterHook     fun(self: BLT_Hooks, id: string)
---@field UnregisterHook   fun(self: BLT_Hooks, id: string)
---@field Add              fun(self: BLT_Hooks, hookId: string, clbckId: string, clbck: function)
---@field AddHook          fun(self: BLT_Hooks, hookId: string, clbckId: string, clbck: function)
---@field RemoveHook       fun(self: BLT_Hooks, hookId: string)
---@field Call             fun(self: BLT_Hooks, id: string, ...: any)
---@field ReturnCall       fun(self: BLT_Hooks, id: string, ...: any) : ... : any
_G.Hooks = {}

---@param ... any
_G.log = function(...) end

_G.pcall = nil

---@class BLT_Global
---@field pcall fun(fn: function, ...: any) : true, ... : any
---@field pcall fun(fn: function, ...: any) : false, string
---@field xpcall fun(fn: function, errHndl: (fun(err: string) : string), ... : any) : true, ... : any
---@field xpcall fun(fn: function, errHndl: (fun(err: string) : string), ... : any) : false, string
_G.blt = {}

---@type string
_G.ModPath = nil

---@type string
_G.SavePath = nil

---@alias table_jsoncompat table<string|number|boolean, string|number|boolean|table_jsoncompat>

---@class BLT_JsonLib
---@field encode fun(tbl: table_jsoncompat) : string
---@field decode fun(json: string) : table_jsoncompat
_G.json = {}

---@class BLT_MenuData
---@field area_bg PD_Menu_BGType
---@field back_callback string

-- TODO: Finish documenting the rest of this
---@class BLT_MenuHelper
---@field NewMenu fun(self: BLT_MenuHelper, menu_id: string)
---@field GetMenu fun(self: BLT_MenuHelper, menu_id: string) : table
---@field BuildMenu fun(self: BLT_MenuHelper, menu_id: string, data: BLT_MenuData?) : table
---@field AddMenuItem fun(self: BLT_MenuHelper, parent_menu: table, child_menu: string, name: string, desc: string, menu_position: number?)
---@field AddMenuItem fun(self: BLT_MenuHelper, parent_menu: table, child_menu: string, name: string, desc: string, menu_positiion: string, subposition: "before"|"after")
---@field LoadFromJsonFile fun(self: BLT_MenuHelper, file_path: string, parent_class: table, data_table: table)
_G.MenuHelper = {}