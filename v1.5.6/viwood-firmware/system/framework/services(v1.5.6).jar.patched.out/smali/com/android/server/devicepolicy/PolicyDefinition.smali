.class public final Lcom/android/server/devicepolicy/PolicyDefinition;
.super Ljava/lang/Object;
.source "PolicyDefinition.java"


# static fields
.field public static APP_FUNCTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static AUTO_TIME:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static AUTO_TIME_ZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final FALSE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

.field public static GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static MEMORY_TAGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final POLICY_DEFINITIONS:Ljava/util/Map;

.field public static RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

.field public static USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static USER_RESTRICTION_FLAGS:Ljava/util/Map;


# instance fields
.field public final mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

.field public final mPolicyFlags:I

.field public final mPolicyKey:Landroid/app/admin/PolicyKey;

.field public final mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

.field public final mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;


# direct methods
.method public static synthetic $r8$lambda$47gp_RDmPTRZnLdjPd-_ygMdBJo(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 162
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setLockTask(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NhTUFT2zcWLFPLkIMQbqt6nSVQo(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 314
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setUsbDataSignalingEnabled(Ljava/lang/Boolean;Landroid/content/Context;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 50

    .line 93
    new-instance v2, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    const/4 v6, 0x0

    .line 432
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 93
    invoke-direct {v0, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    const/4 v8, 0x1

    .line 435
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 93
    invoke-direct {v1, v8}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 94
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->FALSE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 96
    new-instance v12, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v0, v8}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v1, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 97
    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    sput-object v12, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 99
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v14, Landroid/app/admin/NoArgsPolicyKey;

    const-string v0, "autoTimezone"

    invoke-direct {v14, v0}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/devicepolicy/TopPriority;

    .line 105
    const-string v19, "android.app.role.SYSTEM_SUPERVISION"

    invoke-static/range {v19 .. v19}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v20, "android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v4, "enterprise"

    invoke-static {v1, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v17, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>()V

    new-instance v18, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v18}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v13, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME_ZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 112
    new-instance v21, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePermissionPolicyKey;

    const-string/jumbo v3, "permissionGrant"

    invoke-direct {v1, v3}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v10, Landroid/app/admin/IntegerPolicyValue;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v13, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v13, v8}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v14, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v14, v6}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 119
    invoke-static {v10, v13, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v25, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda9;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda9;-><init>()V

    new-instance v26, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v24, 0x2

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    invoke-direct/range {v21 .. v26}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v21, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 141
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move v1, v11

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v5, "securityLogging"

    invoke-direct {v11, v5}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda12;

    invoke-direct {v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda12;-><init>()V

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    const/4 v13, 0x1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 148
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string v13, "auditLogging"

    invoke-direct {v11, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda13;

    invoke-direct {v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda13;-><init>()V

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object/from16 v16, v13

    const/4 v13, 0x1

    move-object/from16 v27, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 155
    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v14, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v10, "lockTask"

    invoke-direct {v14, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/devicepolicy/TopPriority;

    .line 158
    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 157
    invoke-static {v11, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v15, v11}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v17, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda14;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda14;-><init>()V

    new-instance v18, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;-><init>()V

    const/16 v16, 0x2

    invoke-direct/range {v13 .. v18}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v13, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 165
    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v13, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v14, "userControlDisabledPackages"

    invoke-direct {v13, v14}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/devicepolicy/PackageSetUnion;

    invoke-direct {v15}, Lcom/android/server/devicepolicy/PackageSetUnion;-><init>()V

    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda15;-><init>()V

    new-instance v6, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;-><init>()V

    invoke-direct {v11, v13, v15, v1, v6}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v11, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 173
    new-instance v28, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    const-string/jumbo v6, "persistentPreferredActivity"

    invoke-direct {v1, v6}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/devicepolicy/TopPriority;

    .line 178
    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 177
    invoke-static {v13, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v32, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda16;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda16;-><init>()V

    new-instance v33, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;-><init>()V

    const/16 v31, 0x2

    move-object/from16 v29, v1

    move-object/from16 v30, v11

    invoke-direct/range {v28 .. v33}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v28, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v1, v10

    .line 193
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v13, "packageUninstallBlocked"

    invoke-direct {v11, v13}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    move-object v15, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda17;

    invoke-direct {v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda17;-><init>()V

    move-object/from16 v18, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object/from16 v22, v13

    const/4 v13, 0x2

    move-object/from16 v34, v18

    move-object/from16 v35, v22

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 209
    new-instance v28, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v10, Landroid/app/admin/PackagePolicyKey;

    const-string v11, "applicationRestrictions"

    invoke-direct {v10, v11}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v30, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v32, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda18;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda18;-><init>()V

    new-instance v33, Lcom/android/server/devicepolicy/BundlePolicySerializer;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/devicepolicy/BundlePolicySerializer;-><init>()V

    const/16 v31, 0x2e

    move-object/from16 v29, v10

    invoke-direct/range {v28 .. v33}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v28, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 230
    new-instance v36, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v13, "resetPasswordToken"

    invoke-direct {v10, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v38, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v38 .. v38}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v40, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda19;

    invoke-direct/range {v40 .. v40}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda19;-><init>()V

    new-instance v41, Lcom/android/server/devicepolicy/LongPolicySerializer;

    invoke-direct/range {v41 .. v41}, Lcom/android/server/devicepolicy/LongPolicySerializer;-><init>()V

    const/16 v39, 0xa

    move-object/from16 v37, v10

    invoke-direct/range {v36 .. v41}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v36, Lcom/android/server/devicepolicy/PolicyDefinition;->RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 240
    new-instance v28, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v14, "keyguardDisabledFeatures"

    invoke-direct {v10, v14}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v30, Lcom/android/server/devicepolicy/FlagUnion;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/FlagUnion;-><init>()V

    new-instance v32, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;-><init>()V

    new-instance v33, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v31, 0x2

    move-object/from16 v29, v10

    invoke-direct/range {v28 .. v33}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v28, Lcom/android/server/devicepolicy/PolicyDefinition;->KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 248
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v15, v11

    new-instance v11, Landroid/app/admin/PackagePolicyKey;

    const-string v8, "applicationHidden"

    invoke-direct {v11, v8}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    move-object/from16 v22, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;

    invoke-direct {v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;-><init>()V

    move-object/from16 v23, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object/from16 v24, v13

    const/4 v13, 0x6

    move-object/from16 v44, v22

    move-object/from16 v42, v23

    move-object/from16 v43, v24

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 267
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/AccountTypePolicyKey;

    const-string v13, "accountManagementDisabled"

    invoke-direct {v11, v13}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda3;

    invoke-direct {v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda3;-><init>()V

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object/from16 v22, v13

    const/4 v13, 0x6

    move-object/from16 v45, v22

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 284
    new-instance v28, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v11, "permittedInputMethods"

    invoke-direct {v10, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 288
    new-instance v30, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v32, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda4;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda4;-><init>()V

    new-instance v33, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;-><init>()V

    const/16 v31, 0x6

    move-object/from16 v29, v10

    invoke-direct/range {v28 .. v33}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v28, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 294
    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v13, v11

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v14, "screenCaptureDisabled"

    invoke-direct {v11, v14}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v15, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda5;

    invoke-direct {v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda5;-><init>()V

    move-object/from16 v22, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object/from16 v23, v13

    const/4 v13, 0x4

    move-object/from16 v47, v22

    move-object/from16 v46, v23

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 301
    new-instance v28, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v10, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v11, "personalAppsSuspended"

    invoke-direct {v10, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v30, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v32, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda6;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda6;-><init>()V

    new-instance v33, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object/from16 v29, v10

    invoke-direct/range {v28 .. v33}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v28, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v10, v0

    .line 308
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v12, v1

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v13, "usbDataSignaling"

    invoke-direct {v1, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v13, v4

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda7;-><init>()V

    move-object v14, v5

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object v15, v3

    const/4 v3, 0x1

    move-object/from16 v49, v12

    move-object/from16 v48, v14

    move-object/from16 v12, v21

    const/4 v14, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 317
    new-instance v21, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Landroid/app/admin/NoArgsPolicyKey;

    const-string v1, "contentProtection"

    invoke-direct {v0, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v23, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v25, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda8;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda8;-><init>()V

    new-instance v26, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v24, 0x2

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v26}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v21, Lcom/android/server/devicepolicy/PolicyDefinition;->CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 324
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string v2, "appFunctions"

    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v4, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v4, v14}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v5, Landroid/app/admin/IntegerPolicyValue;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 327
    invoke-static {v3, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;-><init>()V

    new-instance v5, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct {v5}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->APP_FUNCTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 338
    new-instance v21, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v1, "passwordComplexity"

    invoke-direct {v0, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v2, Landroid/app/admin/IntegerPolicyValue;

    const/high16 v3, 0x50000

    invoke-direct {v2, v3}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    const/high16 v4, 0x30000

    invoke-direct {v3, v4}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v4, Landroid/app/admin/IntegerPolicyValue;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v5, Landroid/app/admin/IntegerPolicyValue;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 341
    invoke-static {v2, v3, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v25, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;-><init>()V

    new-instance v26, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    invoke-direct/range {v21 .. v26}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v21, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 354
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v2, "packagesSuspended"

    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/devicepolicy/PackageSetUnion;

    invoke-direct {v2}, Lcom/android/server/devicepolicy/PackageSetUnion;-><init>()V

    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda4;-><init>()V

    new-instance v4, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct {v4}, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 362
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v2, "memoryTagging"

    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/devicepolicy/TopPriority;

    .line 365
    invoke-static {v13}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda10;-><init>()V

    new-instance v4, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct {v4}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->MEMORY_TAGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 369
    new-instance v21, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Landroid/app/admin/NoArgsPolicyKey;

    const-string v1, "autoTime"

    invoke-direct {v0, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/devicepolicy/TopPriority;

    .line 372
    invoke-static/range {v19 .. v19}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v2, v3, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v25, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda11;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda11;-><init>()V

    new-instance v26, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v26 .. v26}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    const/16 v24, 0x1

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    invoke-direct/range {v21 .. v26}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v21, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 384
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME_ZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-interface {v0, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v14, v48

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v27

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v12, v49

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v15, v34

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v35

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v15, v42

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v43

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v44

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v2, v45

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v13, v46

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v15, v47

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string/jumbo v1, "usbDataSignaling"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v1, "contentProtection"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v1, "appFunctions"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->APP_FUNCTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v1, "passwordComplexity"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v1, "packagesSuspended"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v1, "memoryTagging"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->MEMORY_TAGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v1, "autoTime"

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_modify_accounts"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_wifi"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_change_wifi_state"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_wifi_tethering"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_grant_admin"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sharing_admin_configured_wifi"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_wifi_direct"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_wifi_config"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_locale"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_install_apps"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_uninstall_apps"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_share_location"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_airplane_mode"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_brightness"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_ambient_display"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_screen_timeout"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_install_unknown_sources_globally"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_bluetooth"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_bluetooth"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_bluetooth_sharing"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_credentials"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_remove_user"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_remove_managed_profile"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_debugging_features"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_vpn"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_location"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_date_time"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_tethering"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_network_reset"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_factory_reset"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_user"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_managed_profile"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_clone_profile"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_private_profile"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "ensure_verify_apps"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_mobile_networks"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_control_apps"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_physical_media"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_unmute_microphone"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_adjust_volume"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_outgoing_calls"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sms"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_fun"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_create_windows"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_system_error_dialogs"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_cross_profile_copy_paste"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_wallpaper"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_set_wallpaper"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_safe_boot"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_record_audio"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_run_in_background"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_camera"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_unmute_device"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_data_roaming"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_set_user_icon"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_unified_password"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "allow_parent_profile_app_linking"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_autofill"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_content_capture"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_content_suggestions"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_user_switch"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sharing_into_profile"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_printing"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_config_private_dns"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_microphone_toggle"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_camera_toggle"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_biometric"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_config_default_apps"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_cellular_2g"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_ultra_wideband_radio"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_near_field_communication_radio"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sim_globally"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_assist_content"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_thread_network"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 543
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PolicyDefinition;->createAndAddUserRestrictionPolicyDefinition(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 0

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 667
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 668
    iput p3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 669
    iput-object p4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 670
    iput-object p5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 672
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isLocalOnlyPolicy()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Non-coexistable global policies not supported,please add support."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 651
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    return-void
.end method

.method public static ACCOUNT_MANAGEMENT_DISABLED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/AccountTypePolicyKey;

    const-string v2, "accountManagementDisabled"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static APPLICATION_HIDDEN(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string v2, "applicationHidden"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string v2, "applicationRestrictions"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static PACKAGE_UNINSTALL_BLOCKED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v2, "packageUninstallBlocked"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    const-string/jumbo v2, "persistentPreferredActivity"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static createAndAddUserRestrictionPolicyDefinition(Ljava/lang/String;I)V
    .locals 7

    .line 629
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    new-instance v2, Landroid/app/admin/UserRestrictionPolicyKey;

    invoke-direct {v2, v0, p0}, Landroid/app/admin/UserRestrictionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v4, p1, 0x14

    .line 632
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v5, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda20;

    invoke-direct {v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda20;-><init>()V

    new-instance v6, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 638
    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/app/admin/UserRestrictionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 563
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported user restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 4

    .line 682
    invoke-static {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object p0

    const/4 v0, 0x0

    .line 683
    const-string v1, "PolicyDefinition"

    if-nez p0, :cond_0

    .line 684
    const-string p0, "Error parsing PolicyDefinition, PolicyKey is null."

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 687
    :cond_0
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 688
    invoke-virtual {p0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    if-nez v2, :cond_1

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown generic policy key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 693
    :cond_1
    invoke-virtual {v2, p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .locals 5

    .line 699
    invoke-static {p0}, Landroid/app/admin/PolicyKey;->readGenericPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object v0

    const/4 v1, 0x0

    .line 700
    const-string v2, "PolicyDefinition"

    if-nez v0, :cond_0

    .line 701
    const-string p0, "Error parsing PolicyKey, GenericPolicyKey is null"

    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 704
    :cond_0
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 705
    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    if-nez v3, :cond_1

    .line 707
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing PolicyKey, Unknown generic policy key: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 710
    :cond_1
    iget-object v0, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v0, p0}, Landroid/app/admin/PolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 6

    .line 557
    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    iget v3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    return-object v0
.end method

.method public enforcePolicy(Ljava/lang/Object;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public getPolicyKey()Landroid/app/admin/PolicyKey;
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    return-object p0
.end method

.method public getResolutionMechanism()Lcom/android/server/devicepolicy/ResolutionMechanism;
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    return-object p0
.end method

.method public isGlobalOnlyPolicy()Z
    .locals 1

    .line 585
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInheritable()Z
    .locals 0

    .line 599
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLocalOnlyPolicy()Z
    .locals 0

    .line 592
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNonCoexistablePolicy()Z
    .locals 0

    .line 607
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUserRestrictionPolicy()Z
    .locals 0

    .line 611
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public readPolicyValueFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public resolvePolicy(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public savePolicyValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicySerializer;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public shouldSkipEnforcementIfNotChanged()Z
    .locals 0

    .line 615
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyDefinition{ mPolicyKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResolutionMechanism= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyFlags= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
