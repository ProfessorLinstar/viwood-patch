.class Lcom/android/server/accessibility/BrailleDisplayConnection;
.super Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;
.source "BrailleDisplayConnection.java"


# static fields
.field public static final sConnectedNodes:Ljava/util/Set;


# instance fields
.field public mController:Landroid/accessibilityservice/IBrailleDisplayController;

.field public mHidrawNode:Ljava/io/File;

.field public mInputThread:Ljava/lang/Thread;

.field public final mLock:Ljava/lang/Object;

.field public mOutputStream:Ljava/io/OutputStream;

.field public mOutputThread:Landroid/os/HandlerThread;

.field public mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

.field public final mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$-dj1Q9MgvDf4wIlWfzOqiOFYLG0(Lcom/android/server/accessibility/BrailleDisplayConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->lambda$startReadingLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$WZFx05r6K5Q-kQ2A6oLnh-C5u38(Lcom/android/server/accessibility/BrailleDisplayConnection;[B)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->lambda$write$0([B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawBusType(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawBusType(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawDesc(II)[B
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawDesc(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawDescSize(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawDescSize(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawName(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeGetHidrawUniq(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->nativeGetHidrawUniq(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    .line 116
    new-instance p1, Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection-IA;)V

    invoke-static {p1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->getDefaultNativeScanner(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    return-void
.end method

.method public static createScannerForShell()Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;
    .locals 2

    .line 124
    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$DefaultNativeInterface;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection-IA;)V

    invoke-static {v0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->getDefaultNativeScanner(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultNativeScanner(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;
    .locals 1

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;)V

    return-object v0
.end method

.method public static getHidItemDataSize(B)I
    .locals 1

    .line 0
    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isBrailleDisplay([B)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 262
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 267
    aget-byte v3, p0, v1

    .line 268
    invoke-static {v3}, Lcom/android/server/accessibility/BrailleDisplayConnection;->isHidItemShort(B)Z

    move-result v4

    const-string v5, "Item "

    const-string v6, "BrailleDisplayConnection"

    if-nez v4, :cond_0

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " declares unsupported long type"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 272
    :cond_0
    invoke-static {v3}, Lcom/android/server/accessibility/BrailleDisplayConnection;->getHidItemDataSize(B)I

    move-result v4

    add-int v7, v1, v4

    .line 273
    array-length v8, p0

    if-lt v7, v8, :cond_1

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " specifies size past the remaining bytes"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 279
    aget-byte v1, p0, v1

    .line 280
    invoke-static {v3, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection;->isHidItemBrailleDisplayUsagePage(BB)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v5

    :cond_2
    add-int/lit8 v1, v7, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static isHidItemBrailleDisplayUsagePage(BB)Z
    .locals 1

    .line 0
    and-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/16 p0, 0x41

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHidItemShort(B)Z
    .locals 1

    .line 0
    const/16 v0, 0xf0

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static native nativeGetHidrawBusType(I)I
.end method

.method private static native nativeGetHidrawDesc(II)[B
.end method

.method private static native nativeGetHidrawDescSize(I)I
.end method

.method private static native nativeGetHidrawName(I)Ljava/lang/String;
.end method

.method private static native nativeGetHidrawUniq(I)Ljava/lang/String;
.end method


# virtual methods
.method public final assertServiceIsConnectedLocked()V
    .locals 1

    .line 325
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isConnectedLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 326
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Accessibility service is not connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final closeInputLocked()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    return-void
.end method

.method public final closeOutputLocked()V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    .line 453
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 455
    :try_start_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 457
    const-string v2, "BrailleDisplayConnection"

    const-string v3, "Unable to close output stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public connectLocked(Ljava/lang/String;Ljava/lang/String;ILandroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 9

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    const/4 p4, 0x0

    .line 174
    new-array v0, p4, [Ljava/lang/String;

    const-string v1, "/dev"

    invoke-static {v1, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v0

    const/4 v2, 0x1

    .line 177
    const-string v3, "BrailleDisplayConnection"

    if-nez v0, :cond_0

    .line 178
    const-string p1, "Unable to access the HIDRAW node directory"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    return-void

    .line 184
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, p4

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    .line 185
    iget-object v6, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v6, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getDeviceReportDescriptor(Ljava/nio/file/Path;)[B

    move-result-object v6

    if-nez v6, :cond_2

    move v4, v2

    goto :goto_0

    .line 191
    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v7, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 193
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    goto :goto_1

    .line 198
    :cond_3
    iget-object v7, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    invoke-interface {v7, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v7

    .line 199
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_1

    :cond_4
    move v7, p4

    .line 201
    :goto_1
    invoke-static {v6}, Lcom/android/server/accessibility/BrailleDisplayConnection;->isBrailleDisplay([B)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 202
    invoke-interface {v8, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;->getDeviceBusType(Ljava/nio/file/Path;)I

    move-result v8

    if-ne v8, p3, :cond_1

    if-eqz v7, :cond_1

    .line 204
    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, v2, :cond_7

    if-eqz v4, :cond_6

    .line 215
    const-string p1, "Unable to access some HIDRAW node\'s descriptor"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    goto :goto_2

    .line 218
    :cond_6
    const-string p1, "Unable to find a unique Braille display matching the provided device"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    return-void

    .line 225
    :cond_7
    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    .line 226
    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    .line 230
    sget-object p3, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    iget-object p4, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 231
    const-string p1, "Unable to find an unused Braille display matching the provided device"

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->sendConnectionErrorLocked(I)V

    return-void

    .line 236
    :cond_8
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->startReadingLocked()V

    .line 241
    :try_start_0
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {p2, p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onBrailleDisplayConnectedLocked(Lcom/android/server/accessibility/BrailleDisplayConnection;)V

    .line 242
    iget-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    invoke-interface {p2, p0, p1}, Landroid/accessibilityservice/IBrailleDisplayController;->onConnected(Landroid/accessibilityservice/IBrailleDisplayConnection;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 244
    const-string p2, "Error calling onConnected"

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->closeInputLocked()V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->closeOutputLocked()V

    .line 341
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mServiceConnection:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->onBrailleDisplayDisconnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    invoke-interface {v1}, Landroid/accessibilityservice/IBrailleDisplayController;->onDisconnected()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 345
    :catch_0
    :try_start_2
    const-string v1, "BrailleDisplayConnection"

    const-string v2, "Error calling onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    sget-object v1, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 348
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$startReadingLocked$1()V
    .locals 6

    .line 406
    const-string v0, "BrailleDisplayConnection"

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 407
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    :try_start_1
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v2

    new-array v2, v2, [B

    .line 410
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 417
    :cond_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_0

    .line 421
    :try_start_2
    iget-object v4, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/accessibilityservice/IBrailleDisplayController;->onInput([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 424
    :try_start_3
    const-string v3, "Error calling onInput"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 430
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    .line 407
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 431
    :goto_4
    const-string v2, "Error reading from connected Braille display"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    :goto_5
    return-void
.end method

.method public final synthetic lambda$write$0([B)V
    .locals 2

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 392
    const-string v0, "BrailleDisplayConnection"

    const-string v1, "Error writing to connected Braille display"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    return-void
.end method

.method public final sendConnectionErrorLocked(I)V
    .locals 1

    .line 252
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mController:Landroid/accessibilityservice/IBrailleDisplayController;

    invoke-interface {p0, p1}, Landroid/accessibilityservice/IBrailleDisplayController;->onConnectionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 254
    const-string p1, "BrailleDisplayConnection"

    const-string v0, "Error calling onConnectionFailed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setTestData(Ljava/util/List;)Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;
    .locals 4

    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 539
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 540
    const-string v2, "HIDRAW_PATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 542
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 544
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 545
    :try_start_0
    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$2;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mScanner:Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;

    .line 576
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception p0

    .line 577
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startReadingLocked()V
    .locals 3

    .line 405
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection;)V

    const-string v2, "BrailleDisplayConnection input thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 436
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mInputThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public write([B)V
    .locals 4

    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    array-length v0, p1

    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 364
    const-string v0, "BrailleDisplayConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested write of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which is larger than maximum "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->assertServiceIsConnectedLocked()V

    .line 373
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 375
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mHidrawNode:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BrailleDisplayConnection output thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    const/4 v2, 0x1

    .line 383
    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 384
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 377
    const-string v1, "BrailleDisplayConnection"

    const-string v2, "Unable to create write stream"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    .line 379
    monitor-exit v0

    return-void

    .line 388
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
