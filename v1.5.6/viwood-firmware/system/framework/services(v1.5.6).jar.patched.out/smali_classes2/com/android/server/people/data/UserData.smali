.class public Lcom/android/server/people/data/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UserData"


# instance fields
.field public mDefaultDialer:Ljava/lang/String;

.field public mDefaultSmsApp:Ljava/lang/String;

.field public mIsUnlocked:Z

.field public mPackageDataMap:Ljava/util/Map;

.field public final mPerUserPeopleDataDir:Ljava/io/File;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$C8inqRDBg3fL_NeWpCQpPXVG8g4(Lcom/android/server/people/data/UserData;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/UserData;->lambda$getOrCreatePackageData$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DhoDUcyb5UQWmkgTM5aSCaEwprw(Lcom/android/server/people/data/UserData;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->isDefaultDialer(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Fo8Nkii5PlS-ioPWIjXKMq1wg2Y(Lcom/android/server/people/data/UserData;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->isDefaultSmsApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 62
    iput p1, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "people"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    .line 64
    iput-object p2, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final createPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 7

    .line 185
    new-instance v0, Lcom/android/server/people/data/PackageData;

    iget v2, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    new-instance v3, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;)V

    new-instance v4, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/UserData;)V

    iget-object v5, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    return-object v0
.end method

.method public deletePackageData(Ljava/lang/String;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/PackageData;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->onDestroy()V

    :cond_0
    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/PackageData;

    .line 73
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBackupPayload()[B
    .locals 6

    .line 144
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 146
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/PackageData;

    .line 149
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationStore;->getBackupPayload()[B

    move-result-object v4

    .line 150
    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 152
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    sget-object v0, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write conversations to backup payload."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_0
    const/4 p0, -0x1

    .line 159
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 161
    sget-object v0, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write conversations end token to backup payload."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public getDefaultDialer()Lcom/android/server/people/data/PackageData;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultSmsApp()Lcom/android/server/people/data/PackageData;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/PackageData;

    return-object p0
.end method

.method public getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/PackageData;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    return p0
.end method

.method public final isDefaultDialer(Ljava/lang/String;)Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isDefaultSmsApp(Ljava/lang/String;)Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isUnlocked()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    return p0
.end method

.method public final synthetic lambda$getOrCreatePackageData$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/people/data/PackageData;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->createPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method

.method public loadUserData()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 92
    iget v0, p0, Lcom/android/server/people/data/UserData;->mUserId:I

    new-instance v1, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/UserData;)V

    new-instance v2, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/UserData;)V

    iget-object v3, p0, Lcom/android/server/people/data/UserData;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/android/server/people/data/UserData;->mPerUserPeopleDataDir:Ljava/io/File;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/people/data/PackageData;->packagesDataFromDisk(ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 95
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public restore([B)V
    .locals 3

    .line 168
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 170
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 173
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v1, v2, p1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 175
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/people/data/ConversationStore;->restore([B)V

    .line 172
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    sget-object p1, Lcom/android/server/people/data/UserData;->TAG:Ljava/lang/String;

    const-string v0, "Failed to restore conversations from backup payload."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setDefaultDialer(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    return-void
.end method

.method public setDefaultSmsApp(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    return-void
.end method

.method public setUserStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    return-void
.end method

.method public setUserUnlocked()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    return-void
.end method
