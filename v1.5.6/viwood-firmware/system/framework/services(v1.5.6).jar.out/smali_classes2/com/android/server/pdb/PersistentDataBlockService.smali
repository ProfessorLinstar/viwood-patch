.class public Lcom/android/server/pdb/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field static final FRP_SECRET_MAGIC:[B

.field static final FRP_SECRET_SIZE:I = 0x20

.field static final HEADER_SIZE:I = 0x8

.field static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field static final MAX_TEST_MODE_DATA_SIZE:I = 0x270c

.field public static final TAG:Ljava/lang/String; = "PersistentDataBlockService"

.field static final TEST_MODE_RESERVED_SIZE:I = 0x2710


# instance fields
.field public mAllowedUid:I

.field public mBlockDeviceSize:J

.field public final mContext:Landroid/content/Context;

.field public final mDataBlockFile:Ljava/lang/String;

.field public mFrpActive:Z

.field public final mFrpEnforced:Z

.field public final mFrpSecretFile:Ljava/lang/String;

.field public final mFrpSecretTmpFile:Ljava/lang/String;

.field public final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field public mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

.field public final mIsFileBacked:Z

.field public mIsWritable:Z

.field public final mLock:Ljava/lang/Object;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$konnAXJEAnzKBClo_dB4T2g6MZ4(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->lambda$onStart$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedUid(Lcom/android/server/pdb/PersistentDataBlockService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlockDeviceSize(Lcom/android/server/pdb/PersistentDataBlockService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pdb/PersistentDataBlockService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrpEnforced(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrpSecretFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrpSecretTmpFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInitDoneSignal(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInternalService(Lcom/android/server/pdb/PersistentDataBlockService;)Lcom/android/server/pdb/PersistentDataBlockService$InternalService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFileBacked(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeactivateFrp(Lcom/android/server/pdb/PersistentDataBlockService;[B)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetMaximumDataBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mdoGetOemUnlockEnabled(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/pdb/PersistentDataBlockService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceChecksumValidity(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceConfigureFrpPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceConfigureFrpPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceFactoryResetProtectionInactive(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceIsAdmin(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBlockOutputChannel(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasFrpSecretMagic(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->hasFrpSecretMagic()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnativeWipe(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetOldSettingForBackworkCompatibility(Lcom/android/server/pdb/PersistentDataBlockService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFrpSecret(Lcom/android/server/pdb/PersistentDataBlockService;[B)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->updateFrpSecret([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 157
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    return-void

    :array_0
    .array-data 1
        -0x26t
        -0x3et
        -0x4t
        -0x33t
        -0x47t
        0x1bt
        0x9t
        -0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-wide/16 v2, -0x1

    .line 203
    iput-wide v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 856
    new-instance v2, Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 1287
    new-instance v2, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;Lcom/android/server/pdb/PersistentDataBlockService-IA;)V

    iput-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 219
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 220
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 222
    const-string p1, "/data/system/frp_secret"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 223
    const-string p1, "/data/system/frp_secret_tmp"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    .line 224
    const-string/jumbo p1, "ro.gsid.image_running"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 226
    const-string p1, "/data/gsi_persistent_data"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-void

    .line 228
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 229
    const-string/jumbo p1, "ro.frp.pst"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-wide/16 v2, -0x1

    .line 203
    iput-wide v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 856
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 1287
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;Lcom/android/server/pdb/PersistentDataBlockService-IA;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 238
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 239
    iput-boolean p2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 240
    iput-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 241
    iput-wide p4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 242
    iput-boolean p6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 243
    iput-boolean p6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 244
    iput-object p7, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 245
    iput-object p8, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    return-void
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public activateFrp()V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 711
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 712
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 713
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public automaticallyDeactivateFrpIfPossible()Z
    .locals 5

    .line 610
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrpWithFileSecret(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 612
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 615
    :cond_0
    sget-object v1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to deactivate with primary secret file, trying backup."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrpWithFileSecret(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->moveFrpTempFileToPrimary()V

    .line 619
    monitor-exit v0

    return v2

    .line 622
    :cond_1
    const-string v3, "Failed to deactivate with backup secret file, trying default secret."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x20

    .line 623
    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 624
    monitor-exit v0

    return v2

    .line 636
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isUpgradingFromPreVRelease()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 637
    const-string v3, "Upgrading from Android 14 or lower, defaulting FRP secret"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->writeFrpMagicAndDefaultSecret()V

    .line 639
    iput-boolean v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 640
    invoke-virtual {p0, v4}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 641
    monitor-exit v0

    return v2

    .line 644
    :cond_3
    const-string p0, "Did not find valid FRP secret, FRP remains active."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    monitor-exit v0

    return v4

    .line 646
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final computeAndWriteDigestLocked()Z
    .locals 3

    const/4 v0, 0x0

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 481
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x20

    .line 482
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 483
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 484
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 485
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    .line 486
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 481
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 488
    :goto_1
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to write block checksum"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public final computeDigestLocked([B)[B
    .locals 5

    const/4 v0, 0x0

    .line 500
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 508
    :try_start_1
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v2, 0x20

    if-eqz p1, :cond_0

    .line 517
    :try_start_2
    array-length v3, p1

    if-ne v3, v2, :cond_0

    .line 518
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 520
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    :goto_0
    const/16 p1, 0x400

    .line 524
    new-array p1, p1, [B

    const/4 v3, 0x0

    .line 525
    invoke-virtual {p0, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 526
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 527
    invoke-virtual {p0, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 533
    :cond_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 536
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 530
    :goto_2
    :try_start_3
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to read partition"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 534
    throw p0

    :catch_1
    move-exception p0

    .line 511
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "SHA-256 not supported?"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catch_2
    move-exception p0

    .line 502
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partition not available?"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final deactivateFrp([B)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 732
    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    goto :goto_3

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 738
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->hasFrpSecretMagic()Z

    move-result v3

    if-nez v3, :cond_1

    .line 739
    sget-object v3, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "No FRP secret magic, system must have been upgraded."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->writeFrpMagicAndDefaultSecret()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 742
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecret()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 745
    array-length v3, v1

    if-eq v3, v2, :cond_2

    goto :goto_1

    .line 751
    :cond_2
    invoke-static {p1, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 752
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 753
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "FRP secret matched, FRP deactivated."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    const/4 p0, 0x1

    return p0

    .line 757
    :cond_3
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRP deactivation failed with secret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 757
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 746
    :cond_4
    :goto_1
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to read FRP secret from persistent data partition"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 742
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 733
    :cond_5
    :goto_3
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string p1, "Attempted to deactivate FRP with a null or incorrectly-sized secret"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final deactivateFrpWithFileSecret(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 651
    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 653
    sget-object v1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read FRP secret file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 653
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final doGetMaximumDataBlockSize()J
    .locals 6

    .line 837
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 838
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v2

    const-wide/16 v4, 0x2738

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e9

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x19000

    cmp-long p0, v2, v0

    if-gtz p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0
.end method

.method public final doGetOemUnlockEnabled()Z
    .locals 7

    const/4 v0, 0x0

    .line 816
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 823
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 824
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    .line 825
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 831
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_0
    move-exception p0

    .line 826
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 828
    :try_start_5
    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unable to access persistent partition"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 831
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 832
    throw p0

    .line 818
    :catch_1
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partition not available"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final doSetOemUnlockEnabledLocked(Z)V
    .locals 5

    .line 800
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 p0, 0x1

    .line 803
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 804
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 805
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 806
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 807
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 808
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 800
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 809
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unable to access persistent partition"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final enforceChecksumValidity()Z
    .locals 3

    const/16 v0, 0x20

    .line 455
    new-array v0, v0, [B

    .line 457
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 459
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 460
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "Formatting FRP partition..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 462
    monitor-exit v1

    return v0

    .line 464
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforceConfigureFrpPermission()V
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t configure Factory Reset Protection. Requires CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceFactoryResetProtectionInactive()V
    .locals 1

    .line 1268
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isFrpActive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1269
    :cond_0
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "Attempt to update PDB was blocked because FRP is active."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "FRP is active"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceIsAdmin()V
    .locals 1

    .line 378
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 379
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 381
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceOemUnlockReadPermission()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OEM_UNLOCK_STATE"

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceOemUnlockWritePermission()V
    .locals 2

    .line 352
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OEM_UNLOCK_STATE"

    const-string v1, "Can\'t modify OEM unlock state"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceUid(I)V
    .locals 1

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    return-void
.end method

.method public final enforceUid(IZ)V
    .locals 1

    .line 371
    iget p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    if-eq p1, p0, :cond_1

    if-eqz p1, :cond_1

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed to access PDB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforceUserRestriction(Ljava/lang/String;)V
    .locals 2

    .line 387
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 388
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OEM unlock is disallowed by user restriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final formatIfOemUnlockEnabled()V
    .locals 2

    .line 333
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 336
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 337
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public formatPartitionLocked(Z)V
    .locals 8

    .line 542
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannelIgnoringFrp()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x28

    .line 547
    :try_start_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x20

    .line 548
    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const v3, 0x19901873

    .line 549
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 550
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 551
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 552
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v1, 0x1

    .line 553
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 556
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v4

    long-to-int v4, v4

    .line 557
    iget-boolean v5, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v5, :cond_0

    add-int/lit16 v4, v4, -0x2738

    .line 558
    sget-object v5, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/lit16 v4, v4, -0x409

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit16 v4, v4, -0x2b21

    .line 562
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 565
    :goto_0
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 566
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 569
    iget-boolean v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v4, :cond_1

    .line 570
    sget-object v4, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "Writing FRP secret magic"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    sget-object v5, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 573
    const-string v5, "Writing default FRP secret"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 575
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 577
    iput-boolean v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 582
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v2, 0x3e8

    .line 585
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 586
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 587
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 590
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 591
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 593
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 594
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 601
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void

    :goto_1
    if-eqz v0, :cond_2

    .line 542
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 596
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "failed to format block"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getAllowedUid()I
    .locals 4

    .line 249
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 250
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402b1

    .line 256
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x100000

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 264
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not able to find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getBlockDeviceSize()J
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 411
    iget-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x19000

    .line 412
    iput-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 417
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    iget-wide v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    .line 417
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getBlockOutputChannel()Ljava/nio/channels/FileChannel;
    .locals 0

    .line 470
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    .line 471
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannelIgnoringFrp()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public final getBlockOutputChannelIgnoringFrp()Ljava/nio/channels/FileChannel;
    .locals 2

    .line 475
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public getFrpCredentialDataOffset()J
    .locals 4

    .line 431
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getOemUnlockDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFrpSecret()[B
    .locals 3

    .line 728
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v0

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object p0

    return-object p0
.end method

.method public getFrpSecretDataOffset()J
    .locals 4

    .line 441
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrpSecretMagicOffset()J
    .locals 4

    .line 436
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v0

    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length p0, p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getInterfaceForTesting()Landroid/service/persistentdata/IPersistentDataBlockService;
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object p0

    return-object p0
.end method

.method public getInternalInterfaceForTesting()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .locals 0

    .line 853
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    return-object p0
.end method

.method public getMaximumFrpDataSize()I
    .locals 6

    .line 424
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 425
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x28

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method

.method public getOemUnlockDataOffset()J
    .locals 4

    .line 451
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTestHarnessModeDataOffset()J
    .locals 4

    .line 446
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .locals 1

    const/16 p0, 0x20

    .line 395
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 398
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const v0, 0x19901873

    if-ne p0, v0, :cond_0

    .line 400
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasFrpSecretMagic()Z
    .locals 4

    .line 718
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v3, v2

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object p0

    if-nez p0, :cond_0

    .line 721
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to read FRP magic region."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 724
    :cond_0
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public isFrpActive()Z
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 674
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUpgradingFromPreVRelease()Z
    .locals 1

    .line 1276
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 1277
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    if-nez p0, :cond_0

    .line 1279
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to retrieve PackageManagerInternal"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0x23

    .line 1284
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->isUpgradingFromLowerThan(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onStart$0()V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 275
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->automaticallyDeactivateFrpIfPossible()Z

    .line 277
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    .line 281
    :goto_0
    const-string/jumbo v0, "persistent_data_block"

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->signalInitDone()V

    return-void
.end method

.method public final moveFrpTempFileToPrimary()V
    .locals 4

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v2, v1

    invoke-static {v0, p0, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 663
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "Error moving FRP backup file to primary (ignored)"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->waitForInitDoneSignal()V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getAllowedUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    .line 311
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 313
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 273
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onStart"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public readDataBlock(JI)[B
    .locals 4

    .line 786
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 789
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 790
    new-array p1, p3, [B

    .line 791
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 792
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 794
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 793
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 786
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    .line 795
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "persistent partition not readable"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setAllowedUid(I)V
    .locals 0

    .line 329
    iput p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    return-void
.end method

.method public final setOldSettingForBackworkCompatibility(Z)V
    .locals 3

    .line 295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 297
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "secure_frp_mode"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    throw p0
.end method

.method public signalInitDone()V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final updateFrpSecret([B)Z
    .locals 6

    const/4 v0, 0x0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    .line 687
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 686
    invoke-static {v1, p1, v2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->-$$Nest$mwriteDataBuffer(Lcom/android/server/pdb/PersistentDataBlockService$InternalService;JLjava/nio/ByteBuffer;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->moveFrpTempFileToPrimary()V

    return v4

    :catch_0
    move-exception p0

    .line 689
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write FRP secret file"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final waitForInitDoneSignal()V
    .locals 4

    .line 318
    const-string v0, "Service "

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " init timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 323
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init interrupted"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeFrpMagicAndDefaultSecret()V
    .locals 6

    .line 764
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannelIgnoringFrp()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 766
    :try_start_2
    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v3, "Writing default FRP secret"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v3, 0x20

    .line 768
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v3, 0x1

    .line 769
    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 771
    const-string v4, "Writing FRP secret magic"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 773
    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 774
    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    const/4 v2, 0x0

    .line 776
    iput-boolean v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 777
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 778
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 777
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 764
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 779
    :goto_1
    sget-object v1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to write FRP magic and default secret"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void
.end method
