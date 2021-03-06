GRANT SELECT, INSERT, UPDATE, DELETE ON F_MESSAGES TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON IBE$LOG_BLOB_FIELDS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON IBE$LOG_FIELDS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON IBE$LOG_KEYS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON IBE$LOG_TABLES TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON IBE$SCRIPTS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_DOC_IN TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_DOC_IN_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_DOC_MOVE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_DOC_MOVE_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_DOC_OUT TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_DOC_OUT_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_DOC_OUT_STR_PARTY TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_DOC_PRICE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_DOC_PRICE_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_DOC_PROPERTY TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_DOC_TEMPLATE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_DOC_TEMPLATE_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_EXT_BASE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_INVENTORY TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_INVENTORY_DOC TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_INVENTORY_DOC_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_INVENTORY_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_MONEY_IN TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_MONEY_IN_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_MONEY_OUT TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_MONEY_OUT_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_BANK TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_NSI_DISCOUNT_CARD TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_DOC_IN_TYPES TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_DOC_MOVE_TYPES TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_DOC_OUT_TYPES TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_NSI_DOC_PROPERTY TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_NSI_DOC_PROPERTY_VAL TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_ED_IZM TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_GOODS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_GOODS_GRP TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_GOODS_MMEDIA TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_NSI_GOOD_PARTY TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_NSI_GOOD_TYPE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_INFO_NAME TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_MONEY_IN_TYPES TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_OBJECTS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_PARTNER TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_NSI_PARTNER_CARD TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_NSI_PARTNER_DISCOUNT_CARD TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_PARTNER_INFO TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_PRICE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_PRICE_STR TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_SCANCODE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_SKIDKA TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_SKLAD TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_STATE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_NSI_STATE_NSI TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_PARTNER_BANK TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_PRICE TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_REG_GOOD TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_REG_PARTNER TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON T_SYS_CONTEXT_VAL TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_SYS_LINKS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_SYS_PARAMS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_SYS_PRIVS TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON VW_CURRENT_OST TO "PUBLIC";
GRANT SELECT, INSERT, UPDATE, DELETE ON T_OST TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE IS_INT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_CONVERT_CYR_STR TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_DATE_TO_STR TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_EXEC_EXCEPTION TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_EXPORT_DISCOUNT_CARD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_EXPORT_DOCS_BY_PERIOD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_EXPORT_DOC_IN TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_EXPORT_DOC_MOVE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_EXPORT_DOC_OUT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_EXPORT_INVENTORY TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_EXPORT_PRICE_BY_DOC_OUT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_GET_CHANGED_GOOD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_NSI_SCANCODE_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_POST_EVENT_GOOD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE PR_SET_SYS_PRIV TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_CALC_DOC_OUT_PARTY TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_CALC_INVENTORY TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_CALC_PRICE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_CALC_PRICE_BY_DOC TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_CALC_PRICE_BY_PRICE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_CHECK_CONTEXT_VAL TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_CHECK_PRIVS TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_CHECK_SYS_PRIVS TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_COPY_IN2MOVE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_COPY_IN2PRICE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_COPY_MOVE2SPISAN TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_COPY_PRICE2PRICE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_DOC_OUT_CALC_SKIDKA TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_EXPORT_REG_GOODS TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_DOC_BODY TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_DOC_HEAD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_DOC_NUM TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_DOC_NUM_BY_PARTY TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_GOOD_MOOVE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_GOOD_MOOVE_BY_STOCK TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_IN_BY_PERIOD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_NSI_DISCOUNT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_OUT_BY_PERIOD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_OUT_BY_PERIOD_BY_SKLAD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_OUT_BY_PRD_BY_SKLAD_EXT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_SOURCE_FOR_PRICE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_GET_SYS_PARAM TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_DOC_IN TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_DOC_IN_STR TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_DOC_MOVE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_DOC_OUT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_DOC_OUT_STR TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_DOC_PRICE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_DOC_PRICE_STR TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_DOC_TEMPLATE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_INVENTORY_DOC_STR TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_NSI_DISCOUNT_CARD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_NSI_GOOD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_NSI_PARTNER TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_NSI_PRICE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_IMPORT_NSI_SCANCODE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_INVENTORY_MAKE_DOCS_BY_REZ TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_MAKE_PARTY_FROM_DOC_IN TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_MAKE_PARTY_FROM_DOC_MOVE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_MONEY_IN_AUTO TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_MONEY_OUT_AUTO TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_ROUND TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_SET_PARTY_FOR_DOC_OUT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_SET_PRICE_FROM_NSI TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_SET_SYS_CONTEXT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_SET_SYS_PARAM TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_STR_S_BY_CNT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_IN_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_STR_S_BY_CNT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_MOVE_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_MAKE_PAY TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_SET_DEF_PROP TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_STR_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_STR_GET_PARTY TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_STR_S_BY_CNT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_OUT_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PRICE_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PROPERTYES_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_PROPERTYES_SET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_STR_S_BY_CNT TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_DOC_TEMPLATE_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_DOC_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_INVENTORY_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_STR_S_DOC TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_IN_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_STR_S_DOC TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_MONEY_OUT_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_BANK_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_BANK_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_BANK_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_BANK_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_BANK_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DISCOUNT_CARD_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DISCOUNT_CARD_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DISCOUNT_CARD_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DISCOUNT_CREATE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DOC_IN_TYPES_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DOC_IN_TYPES_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DOC_MOVE_TYPES_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DOC_MOVE_TYPES_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DOC_OUT_TYPES_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_DOC_PROPERTY_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_ED_IZM_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_ED_IZM_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_ED_IZM_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_ED_IZM_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_ED_IZM_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_GET_BY_SCANCODE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_GRP_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_GRP_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_GRP_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_GRP_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_GRP_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_MMEDIA_ART_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_MMEDIA_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_MMEDIA_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_MMEDIA_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_MMEDIA_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOODS_XML TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOOD_IMPORT_PHOTO TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOOD_PARTY_CREATE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOOD_TYPE_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOOD_TYPE_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOOD_TYPE_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_GOOD_TYPE_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_MONEY_IN_TYPES_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_MONEY_IN_TYPES_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_MONEY_IN_TYPES_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_MONEY_IN_TYPES_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_MONEY_IN_TYPES_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_CARD_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_CARD_SET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_INFO_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_INFO_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_INFO_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_INFO_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_INFO_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PARTNER_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_STR_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_STR_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_STR_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_STR_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_PRICE_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SCANCODE_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SCANCODE_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SCANCODE_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SCANCODE_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SCANCODE_S_BY_GOOD TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SCANCODE_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SKLAD_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SKLAD_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SKLAD_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SKLAD_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_SKLAD_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_STATE_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_STATE_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_STATE_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_STATE_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_NSI_STATE_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PARTNER_BANK_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PARTNER_BANK_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PARTNER_BANK_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PARTNER_BANK_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PARTNER_DISCOUNT_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PARTNER_DISCOUNT_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PARTNER_DISCOUNT_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PRICE_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PRICE_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PRICE_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PRICE_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_PRICE_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_REG_GOOD_D TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_REG_GOOD_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_REG_GOOD_I TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_REG_GOOD_S TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_REG_GOOD_SET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_REG_GOOD_U TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_REG_PARTNER_GET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_T_REG_PARTNER_SET TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_UNMAKE_PARTY_FROM_DOC TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE SP_UNMAKE_PARTY_FROM_DOC_MOVE TO "PUBLIC";
GRANT EXECUTE ON PROCEDURE T_NSI_DOC_PROPERTY_VAL_S TO "PUBLIC";
