.class public interface abstract Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
.super Ljava/lang/Object;
.source "DomainVerificationManagerInternal.java"


# static fields
.field public static final DISABLED_ID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    return-void
.end method

.method public static approvalLevelToDebugString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 183
    const-string p0, "UNKNOWN"

    return-object p0

    .line 181
    :pswitch_0
    const-string p0, "INSTANT_APP"

    return-object p0

    .line 179
    :pswitch_1
    const-string p0, "VERIFIED"

    return-object p0

    .line 177
    :pswitch_2
    const-string p0, "USER_SELECTION"

    return-object p0

    .line 175
    :pswitch_3
    const-string p0, "LEGACY_ALWAYS"

    return-object p0

    .line 173
    :pswitch_4
    const-string p0, "LEGACY_ASK"

    return-object p0

    .line 171
    :pswitch_5
    const-string p0, "NONE"

    return-object p0

    .line 169
    :pswitch_6
    const-string p0, "UNVERIFIED"

    return-object p0

    .line 167
    :pswitch_7
    const-string p0, "UNDECLARED"

    return-object p0

    .line 165
    :pswitch_8
    const-string p0, "DISABLED"

    return-object p0

    .line 163
    :pswitch_9
    const-string p0, "NOT_INSTALLED"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
.end method

.method public abstract addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V
.end method

.method public abstract approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I
.end method

.method public abstract clearPackage(Ljava/lang/String;)V
.end method

.method public abstract clearPackageForUser(Ljava/lang/String;I)V
.end method

.method public abstract clearUser(I)V
.end method

.method public abstract filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;
.end method

.method public abstract generateNewId()Ljava/util/UUID;
.end method

.method public abstract getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
.end method

.method public abstract getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
.end method

.method public abstract getDomainVerificationInfoId(Ljava/lang/String;)Ljava/util/UUID;
.end method

.method public abstract getLegacyState(Ljava/lang/String;I)I
.end method

.method public abstract getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
.end method

.method public abstract getShell()Lcom/android/server/pm/verify/domain/DomainVerificationShell;
.end method

.method public abstract migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V
.end method

.method public abstract printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract readLegacySettings(Lcom/android/modules/utils/TypedXmlPullParser;)V
.end method

.method public abstract readSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlPullParser;)V
.end method

.method public abstract restoreSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlPullParser;)V
.end method

.method public abstract runMessage(ILjava/lang/Object;)Z
.end method

.method public abstract setConnection(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;)V
.end method

.method public abstract setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I
.end method

.method public abstract setLegacyUserState(Ljava/lang/String;II)Z
.end method

.method public abstract setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
.end method

.method public abstract writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V
.end method
