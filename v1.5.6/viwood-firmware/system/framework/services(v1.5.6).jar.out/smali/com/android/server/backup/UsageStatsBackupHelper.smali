.class public Lcom/android/server/backup/UsageStatsBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "UsageStatsBackupHelper.java"


# instance fields
.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 37
    const-string/jumbo v0, "usage_stats"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 38
    iput p1, p0, Lcom/android/server/backup/UsageStatsBackupHelper;->mUserId:I

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 4

    .line 65
    const-string/jumbo v0, "usage_stats"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 67
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 68
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 71
    array-length p2, p2

    add-int/lit8 p2, p2, -0x4

    new-array v2, p2, [B

    const/4 v3, 0x0

    .line 72
    invoke-virtual {v1, v2, v3, p2}, Ljava/io/DataInputStream;->read([BII)I

    .line 73
    iget p0, p0, Lcom/android/server/backup/UsageStatsBackupHelper;->mUserId:I

    invoke-virtual {v0, p0, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->applyRestoredPayload(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .locals 4

    .line 43
    const-string/jumbo v0, "usage_stats"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 45
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 46
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 53
    iget p0, p0, Lcom/android/server/backup/UsageStatsBackupHelper;->mUserId:I

    invoke-virtual {v0, p0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->getBackupPayload(ILjava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 58
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
