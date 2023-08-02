CREATE TABLE "RULES_DEFAULT_IMPACTS"(
    "UUID" CHARACTER VARYING(40) NOT NULL,
    "RULE_UUID" CHARACTER VARYING(40) NOT NULL,
    "SOFTWARE_QUALITY" CHARACTER VARYING(40) NOT NULL,
    "SEVERITY" CHARACTER VARYING(40) NOT NULL
);
ALTER TABLE "RULES_DEFAULT_IMPACTS" ADD CONSTRAINT "PK_RULES_DEFAULT_IMPACTS" PRIMARY KEY("UUID");
CREATE INDEX "RUL_DEF_IMP_RULE_UUID" ON "RULES_DEFAULT_IMPACTS"("RULE_UUID" NULLS FIRST);
