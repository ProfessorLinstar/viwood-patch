.class public Lcom/android/server/adb/AdbDebuggingManager;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# static fields
.field public static final ADBD_STATE_CHANGE_TIMEOUT:J

.field public static final SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

.field public static final TAG:Ljava/lang/String; = "AdbDebuggingManager"


# instance fields
.field public mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

.field public mAdbUsbEnabled:Z

.field public mAdbWifiEnabled:Z

.field public final mConfirmComponent:Ljava/lang/String;

.field public final mConnectedKeys:Ljava/util/Map;

.field public mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mFingerprints:Ljava/lang/String;

.field final mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

.field public mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

.field public final mTempKeysFile:Ljava/io/File;

.field public mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

.field public final mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

.field public final mUserKeyFile:Ljava/io/File;

.field public final mWifiConnectedKeys:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$I3NlJTMol-2JFN3dPyCB7gKkrsk()J
    .locals 2

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempKeysFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThread(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAdbUsbEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAdbWifiEnabled(Lcom/android/server/adb/AdbDebuggingManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionPortPoller(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPairingThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$PairingThread;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThread(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->sendPersistKeyStoreMessage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConfirmationForKey(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartConfirmationForNetwork(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationForNetwork(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->writeKeys(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetADBD_STATE_CHANGE_TIMEOUT()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/adb/AdbDebuggingManager;->ADBD_STATE_CHANGE_TIMEOUT:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 142
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 163
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/adb/AdbDebuggingManager;->ADBD_STATE_CHANGE_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 174
    const-string v0, "adb_keys"

    .line 177
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v0, "adb_temp_keys.xml"

    .line 178
    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 174
    invoke-direct/range {v1 .. v7}, Lcom/android/server/adb/AdbDebuggingManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 168
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-direct {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 195
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 197
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 199
    iput-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 200
    iput-object p5, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 201
    iput-object p6, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 202
    new-instance p1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    return-void
.end method

.method public static getAdbFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1594
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1595
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "misc/adb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v0, "ADB data directory does not exist"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1602
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 207
    const-string v0, "android.permission.MANAGE_DEBUGGING"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .locals 2

    .line 1664
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1665
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1666
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1667
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public allowWirelessDebugging(ZLjava/lang/String;)V
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1691
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1692
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1693
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public clearDebuggingKeys()V
    .locals 1

    .line 1682
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;
    .locals 1

    .line 1582
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 1583
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1585
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public denyDebugging()V
    .locals 1

    .line 1674
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public denyWirelessDebugging()V
    .locals 1

    .line 1700
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public disablePairing()V
    .locals 1

    .line 1756
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 5

    .line 1785
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 1787
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    const-string v1, "connected_to_adb"

    const-wide v2, 0x10800000001L

    invoke-virtual {p1, v1, v2, v3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v1, 0x10900000002L

    .line 1788
    iget-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    const-string/jumbo v3, "last_key_received"

    invoke-static {p1, v3, v1, v2, p4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const/4 p4, 0x0

    .line 1792
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/adb/adb_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1794
    const-string/jumbo v2, "user_keys"

    .line 1795
    invoke-static {v1, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, 0x10900000003L

    .line 1794
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 1797
    :cond_1
    sget-object v1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v2, "No user keys on this device"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1800
    :goto_1
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot read user keys"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    :goto_2
    :try_start_1
    const-string/jumbo v1, "system_keys"

    new-instance v2, Ljava/io/File;

    const-string v3, "/adb_keys"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1805
    invoke-static {v2, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    .line 1804
    invoke-virtual {p1, v1, v3, v4, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1807
    sget-object v2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot read system keys"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1811
    :goto_3
    :try_start_2
    const-string/jumbo v1, "keystore"

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 1812
    invoke-static {p0, v0, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x10900000005L

    .line 1811
    invoke-virtual {p1, v1, v2, v3, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 1814
    sget-object p4, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v0, "Cannot read keystore: "

    invoke-static {p4, v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1817
    :goto_4
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public enablePairingByPairingCode()V
    .locals 1

    .line 1736
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1743
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1744
    const-string/jumbo v1, "serviceName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const-string/jumbo p1, "password"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    iget-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 p2, 0x10

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1749
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final getAdbConnectionInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    monitor-enter v0

    .line 633
    :try_start_0
    new-instance v1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-direct {v1, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 634
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAdbTempKeysFile()Ljava/io/File;
    .locals 0

    .line 1606
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    return-object p0
.end method

.method public getAdbWirelessPort()I
    .locals 0

    .line 1707
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbConnectionInfo()Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1711
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getPort()I

    move-result p0

    return p0
.end method

.method public final getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1471
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1476
    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1482
    const-string v2, "\\s+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 1485
    :try_start_1
    invoke-static {p1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1490
    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_2

    .line 1491
    aget-byte v0, p1, v2

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1492
    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1493
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    .line 1494
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1497
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1487
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v1, "error doing base64 decoding"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception p0

    .line 1478
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    const-string v1, "Error getting digester"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getPairedDevices()Ljava/util/Map;
    .locals 1

    .line 1718
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1719
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getPairedDevices()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUserKeyFile()Ljava/io/File;
    .locals 0

    .line 1610
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    return-object p0
.end method

.method public notifyKeyFilesUpdated()V
    .locals 1

    .line 1770
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final sendPersistKeyStoreMessage()V
    .locals 2

    .line 1777
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1778
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 624
    :try_start_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->clear()V

    .line 625
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 627
    :cond_0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 628
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAdbEnabled(ZB)V
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1648
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    if-ne p2, v0, :cond_3

    .line 1651
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    if-eqz p1, :cond_2

    const/16 p1, 0xb

    goto :goto_1

    :cond_2
    const/16 p1, 0xc

    :goto_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1654
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAdbEnabled called with unimplemented transport type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .locals 2

    .line 1550
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1551
    invoke-virtual {p0, p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p3

    const/high16 v1, 0x10000000

    .line 1552
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 1553
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1555
    :try_start_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1558
    sget-object p2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start adb whitelist activity: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final startConfirmationForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "key"

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v1, "fingerprints"

    invoke-direct {p1, v1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 1523
    iget-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1525
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1526
    iget-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1527
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1040221

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1532
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1040222

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1535
    :goto_0
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1536
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1537
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 1541
    :cond_2
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start customAdbPublicKeyConfirmation[SecondaryUser]Component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as an Activity or a Service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final startConfirmationForNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v2, "ssid"

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance p1, Ljava/util/AbstractMap$SimpleEntry;

    const-string v1, "bssid"

    invoke-direct {p1, v1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 1506
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1040223

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1508
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1509
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1510
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1511
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1514
    :cond_0
    sget-object p0, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to start customAdbWifiNetworkConfirmation[SecondaryUser]Component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as an Activity or a Service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .locals 1

    .line 1569
    invoke-virtual {p0, p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p3

    .line 1571
    :try_start_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1575
    sget-object p2, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to start adb whitelist service: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unpairDevice(Ljava/lang/String;)V
    .locals 2

    .line 1726
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    const/16 v1, 0x11

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1729
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final writeKeys(Ljava/lang/Iterable;)V
    .locals 4

    .line 1614
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 1618
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1623
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1624
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1625
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v2, 0xa

    .line 1626
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 1628
    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1635
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 1636
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1a0

    const/4 v0, -0x1

    .line 1635
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    return-void

    :catch_1
    move-exception p0

    const/4 v1, 0x0

    .line 1630
    :goto_1
    sget-object p1, Lcom/android/server/adb/AdbDebuggingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method
