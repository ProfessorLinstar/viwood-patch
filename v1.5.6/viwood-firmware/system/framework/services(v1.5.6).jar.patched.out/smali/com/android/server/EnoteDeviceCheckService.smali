.class public Lcom/android/server/EnoteDeviceCheckService;
.super Lcom/android/server/SystemService;
.source "EnoteDeviceCheckService.java"


# instance fields
.field public mBlockDialogView:Landroid/view/View;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mCountDownTimer:Landroid/os/CountDownTimer;

.field public volatile mDeviceStatus:Z

.field public mEnabledDialogView:Landroid/view/View;

.field public volatile mIsDeviceChecking:Z

.field public mMD5Sign:Ljava/lang/String;

.field public mMainHandler:Landroid/os/Handler;

.field public mRetryCount:I

.field public volatile mUserHide:Z

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWorkerHandler:Landroid/os/Handler;

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$Faaz2Qm3dQzVCI6F_KRAQYYe_yI(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->hideDeviceBlockedPopWindow()V

    return-void
.end method

.method public static synthetic $r8$lambda$O2veOmjkIS3wWCdlPmh0KFqdX9g(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->stopCountdown()V

    return-void
.end method

.method public static synthetic $r8$lambda$PyBFq6gNiJgNPQ9K4XCmPGMnAhU(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->showDeviceBlockedPopWindow()V

    return-void
.end method

.method public static synthetic $r8$lambda$au22pI7kAlcPMdcuc3RXySJrqig(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->registerNetworkCallback()V

    return-void
.end method

.method public static synthetic $r8$lambda$e_filv6Ym9RfWCRIBqHYmoTIeKc(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->showDeviceUnlockPopWindow()V

    return-void
.end method

.method public static synthetic $r8$lambda$kmleF5RKJYjqY1mgrahUn0rTtlc(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->startCountdown()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBlockDialogView(Lcom/android/server/EnoteDeviceCheckService;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/EnoteDeviceCheckService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDeviceChecking(Lcom/android/server/EnoteDeviceCheckService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mIsDeviceChecking:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/EnoteDeviceCheckService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUserHide(Lcom/android/server/EnoteDeviceCheckService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/EnoteDeviceCheckService;->mUserHide:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWakeLock(Lcom/android/server/EnoteDeviceCheckService;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/EnoteDeviceCheckService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mattemptGetConnectivityManager(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->attemptGetConnectivityManager()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecuteCheckDevice(Lcom/android/server/EnoteDeviceCheckService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/EnoteDeviceCheckService;->executeCheckDevice(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecuteReadNvRam(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->executeReadNvRam()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecuteShutdown(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->executeShutdown()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mexecuteWriteNvRam(Lcom/android/server/EnoteDeviceCheckService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/EnoteDeviceCheckService;->executeWriteNvRam(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetNetworkType(Lcom/android/server/EnoteDeviceCheckService;Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/EnoteDeviceCheckService;->getNetworkType(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhideDeviceBlockedPopWindow(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->hideDeviceBlockedPopWindow()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideDeviceUnlockDialogView(Lcom/android/server/EnoteDeviceCheckService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->hideDeviceUnlockDialogView()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendTaskToWorkerThread(Lcom/android/server/EnoteDeviceCheckService;ILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/EnoteDeviceCheckService;->sendTaskToWorkerThread(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mMD5Sign:Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mRetryCount:I

    .line 85
    iput-boolean v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mIsDeviceChecking:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mUserHide:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mDeviceStatus:Z

    .line 105
    iput-object p1, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    .line 106
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getLocalHostURL()Ljava/lang/String;
    .locals 2

    .line 573
    const-string/jumbo v0, "persist.eink.localhost.url"

    const-string v1, "https://api.viwoods.com"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMachineModel()Ljava/lang/String;
    .locals 3

    .line 550
    const-string/jumbo v0, "ro.eink.model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    const-string/jumbo v2, "ro.product.system.name"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string/jumbo v2, "sys_mssi_t_64_cn_wifi"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_wifi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "unknown"

    :cond_1
    return-object v0
.end method

.method public static getMachineNumber()Ljava/lang/String;
    .locals 2

    .line 544
    const-string/jumbo v0, "ro.serialno"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "unknown"

    :cond_0
    return-object v0
.end method

.method public static getSystemLanguage()Ljava/lang/String;
    .locals 1

    .line 565
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 2

    .line 560
    const-string/jumbo v0, "ro.product.version"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "unknown"

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final attemptGetConnectivityManager()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 187
    :cond_0
    iget v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mRetryCount:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    .line 190
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 192
    :cond_1
    const-string v0, "EnoteDeviceCheckService"

    const-string v1, "Max retry count reached, stop getting ConnectivityManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->stopWorkerThread()V

    return-void
.end method

.method public final executeCheckDevice(Ljava/lang/String;)V
    .locals 12

    .line 230
    const-string p1, "application/json;charset=utf-8"

    const-string v0, "Close resource failed: "

    const-string v1, "EnoteDeviceCheckService"

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/EnoteDeviceCheckService;->mIsDeviceChecking:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->generateSignKey()Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-static {}, Lcom/android/server/EnoteDeviceCheckService;->getMachineModel()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-static {}, Lcom/android/server/EnoteDeviceCheckService;->getMachineNumber()Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-static {}, Lcom/android/server/EnoteDeviceCheckService;->getSystemVersion()Ljava/lang/String;

    move-result-object v8

    .line 241
    invoke-static {}, Lcom/android/server/EnoteDeviceCheckService;->getSystemLanguage()Ljava/lang/String;

    move-result-object v9

    .line 243
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EnoteDeviceCheckService;->getLocalHostURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/api/v1/number/black"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 244
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 246
    :try_start_1
    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 248
    invoke-virtual {v10, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v11, 0x2710

    .line 249
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v11, 0x3a98

    .line 250
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 252
    const-string v11, "Content-Type"

    invoke-virtual {v10, v11, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v11, "Accept"

    invoke-virtual {v10, v11, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string p1, "System-Version"

    invoke-virtual {v10, p1, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string p1, "Machine-Model"

    invoke-virtual {v10, p1, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string p1, "Machine-Number"

    invoke-virtual {v10, p1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string p1, "Sign"

    invoke-virtual {v10, p1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string p1, "Language"

    invoke-virtual {v10, p1, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 260
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 262
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 265
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v5, v4

    goto/16 :goto_a

    :catch_0
    move-exception v2

    move-object v5, v4

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :goto_0
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 268
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 271
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v4, v7

    goto/16 :goto_a

    :catch_1
    move-exception v2

    move-object v4, v7

    goto/16 :goto_6

    .line 273
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v4, "code"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x275e

    const/4 v9, 0x5

    if-ne v4, v8, :cond_2

    .line 285
    iget-boolean v4, p0, Lcom/android/server/EnoteDeviceCheckService;->mDeviceStatus:Z

    if-nez v4, :cond_3

    .line 287
    iput-boolean v2, p0, Lcom/android/server/EnoteDeviceCheckService;->mDeviceStatus:Z

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v9, v2}, Lcom/android/server/EnoteDeviceCheckService;->sendTaskToWorkerThread(ILjava/lang/Object;)V

    .line 289
    iget-object v2, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    iget-object v2, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    if-ne v4, v6, :cond_3

    .line 293
    iget-object v2, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    iget-object v2, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    iget-boolean v2, p0, Lcom/android/server/EnoteDeviceCheckService;->mDeviceStatus:Z

    if-eqz v2, :cond_3

    .line 296
    iput-boolean v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mDeviceStatus:Z

    .line 297
    iput-boolean v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mUserHide:Z

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v9, v2}, Lcom/android/server/EnoteDeviceCheckService;->sendTaskToWorkerThread(ILjava/lang/Object;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 305
    :cond_3
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mIsDeviceChecking:Z

    .line 307
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    if-eqz v5, :cond_4

    .line 308
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    .line 309
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 310
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    .line 312
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catchall_2
    move-exception v2

    goto :goto_a

    :catch_3
    move-exception v2

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object p1, v4

    move-object v5, p1

    goto :goto_a

    :catch_4
    move-exception v2

    move-object p1, v4

    move-object v5, p1

    goto :goto_6

    :catchall_4
    move-exception v2

    move-object p1, v4

    move-object v5, p1

    move-object v10, v5

    goto :goto_a

    :catch_5
    move-exception v2

    move-object p1, v4

    move-object v5, p1

    move-object v10, v5

    .line 303
    :goto_6
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "upload failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 305
    iput-boolean v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mIsDeviceChecking:Z

    if-eqz v4, :cond_5

    .line 307
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_6
    move-exception p0

    goto :goto_8

    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    .line 308
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz p1, :cond_7

    .line 309
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz v10, :cond_8

    .line 310
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    .line 312
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_8
    :goto_9
    return-void

    .line 305
    :goto_a
    iput-boolean v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mIsDeviceChecking:Z

    if-eqz v4, :cond_9

    .line 307
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_b

    :catch_7
    move-exception p0

    goto :goto_c

    :cond_9
    :goto_b
    if-eqz v5, :cond_a

    .line 308
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz p1, :cond_b

    .line 309
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v10, :cond_c

    .line 310
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_d

    .line 312
    :goto_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    :cond_c
    :goto_d
    throw v2
.end method

.method public final executeReadNvRam()V
    .locals 5

    .line 690
    const-class v0, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;

    .line 691
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;

    if-nez v0, :cond_0

    .line 693
    const-string p0, "EnoteDeviceCheckService"

    const-string v0, "EnoteService is null, skip read operation"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v1, 0x2e4

    const/4 v2, 0x0

    .line 696
    const-string v3, "PRODUCT_INFO"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;->readFilefromNvram2(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0000"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 702
    :cond_1
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 703
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/EnoteDeviceCheckService;->mDeviceStatus:Z

    .line 704
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/EnoteDeviceCheckService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final executeShutdown()V
    .locals 3

    .line 627
    const-string v0, "EnoteDeviceCheckService"

    const-string v1, "Request shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "device_check_request"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 631
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 632
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final executeWriteNvRam(I)V
    .locals 4

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 710
    const-class v1, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;

    .line 711
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;

    if-nez v1, :cond_0

    .line 713
    const-string p0, "EnoteDeviceCheckService"

    const-string p1, "EnoteService is null, skip write operation"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0x2e4

    .line 716
    const-string v3, "PRODUCT_INFO"

    if-ne p1, v0, :cond_1

    .line 717
    new-array p1, v0, [B

    aput-byte v0, p1, p0

    invoke-virtual {v1, v3, v2, v0, p1}, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;->writeFileByNvram(Ljava/lang/String;II[B)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 719
    new-array p1, v0, [B

    aput-byte p0, p1, p0

    invoke-virtual {v1, v3, v2, v0, p1}, Lcom/android/server/ENoteSettingService$ENoteSettingServiceInternal;->writeFileByNvram(Ljava/lang/String;II[B)I

    :cond_2
    return-void
.end method

.method public final generateSignKey()Ljava/lang/String;
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mMD5Sign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mMD5Sign:Ljava/lang/String;

    return-object p0

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TzlFZnBJeDRnOW84"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VEt1Q3YybjVtc0JIdWNTckFk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri=/api/v1/number/black"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EnoteDeviceCheckService$MD5Utils;->encryptToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mMD5Sign:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType(Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    .line 503
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 p1, 0x1

    .line 504
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 505
    const-string p0, "WiFi"

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 506
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 507
    const-string p0, "Cellular"

    return-object p0

    .line 509
    :cond_2
    const-string p0, "Other"

    return-object p0
.end method

.method public final hideDeviceBlockedPopWindow()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 407
    iget-object v1, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove existing dialog failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnoteDeviceCheckService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final hideDeviceUnlockDialogView()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mEnabledDialogView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 493
    iget-object v1, p0, Lcom/android/server/EnoteDeviceCheckService;->mEnabledDialogView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove existing dialog failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnoteDeviceCheckService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mEnabledDialogView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final initWorkerThread()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 126
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EnoteWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 127
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 129
    new-instance v0, Lcom/android/server/EnoteDeviceCheckService$1;

    iget-object v1, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/EnoteDeviceCheckService$1;-><init>(Lcom/android/server/EnoteDeviceCheckService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/EnoteDeviceCheckService;->initWorkerThread()V

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/android/server/EnoteDeviceCheckService;->sendTaskToWorkerThread(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/android/server/EnoteDeviceCheckService;->sendTaskToWorkerThread(ILjava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public final registerNetworkCallback()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 203
    const-string p0, "EnoteDeviceCheckService"

    const-string/jumbo v0, "registerNetworkCallback failed: mConnectivityManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 207
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 208
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 209
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/android/server/EnoteDeviceCheckService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v2, Lcom/android/server/EnoteDeviceCheckService$2;

    invoke-direct {v2, p0}, Lcom/android/server/EnoteDeviceCheckService$2;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final sendTaskToWorkerThread(ILjava/lang/Object;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 167
    const-string p0, "EnoteDeviceCheckService"

    const-string/jumbo p1, "sendTaskToWorkerThread failed: mWorkerHandler is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 172
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final showDeviceBlockedPopWindow()V
    .locals 11

    .line 318
    iget-boolean v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mUserHide:Z

    const-string v1, "EnoteDeviceCheckService"

    if-eqz v0, :cond_0

    .line 319
    const-string p0, "BlockDialogView state is UserHide, skip showDeviceBlockedPopWindow"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/WindowManager;

    if-nez v2, :cond_1

    .line 325
    const-string/jumbo p0, "windowManager is null, skip showDeviceBlockedPopWindow"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 331
    :try_start_0
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove existing dialog failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    iput-object v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    .line 338
    :cond_2
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 339
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 342
    :try_start_1
    iget-object v4, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10900a7

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 345
    const-string p0, "BlockDialogView is null, skip showDeviceBlockedPopWindow"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_3
    const v4, 0x1020250

    .line 349
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 350
    iget-object v4, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    const v5, 0x10205ce

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 351
    iget-object v5, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    const v6, 0x10205d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 353
    new-instance v6, Lcom/android/server/EnoteDeviceCheckService$3;

    invoke-direct {v6, p0}, Lcom/android/server/EnoteDeviceCheckService$3;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    const v6, 0x10401b7

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/EnoteDeviceCheckService;->getMachineNumber()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    const v4, 0x10409d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 371
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const v9, -0x7f7bffc0

    const/4 v10, -0x3

    const/4 v7, -0x2

    const/16 v8, 0x7f6

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 380
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v3, 0x11

    .line 381
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    .line 383
    invoke-virtual {v5, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v6, 0x10

    .line 385
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 386
    const-string v6, "deviceBlocked"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v6, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 389
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 393
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mBlockDialogView:Landroid/view/View;

    invoke-interface {v2, p0, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {v0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 399
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDeviceBlockedPopWindow failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public final showDeviceUnlockPopWindow()V
    .locals 11

    .line 416
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowManager;

    .line 418
    const-string v2, "EnoteDeviceCheckService"

    if-nez v1, :cond_0

    .line 419
    const-string/jumbo p0, "windowManager is null, skip showDeviceUnlockPopWindow"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mEnabledDialogView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 425
    :try_start_0
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove existing dialog failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_0
    iput-object v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mEnabledDialogView:Landroid/view/View;

    .line 432
    :cond_1
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 433
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 436
    :try_start_1
    iget-object v4, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10900a8

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mEnabledDialogView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 439
    const-string p0, "EnabledDialogView is null, skip showDeviceUnlockPopWindow"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    const v4, 0x1020251

    .line 443
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 445
    new-instance v4, Lcom/android/server/EnoteDeviceCheckService$4;

    invoke-direct {v4, p0}, Lcom/android/server/EnoteDeviceCheckService$4;-><init>(Lcom/android/server/EnoteDeviceCheckService;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v3, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 457
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const v9, -0x7f7bffc0

    const/4 v10, -0x3

    const/4 v7, -0x2

    const/16 v8, 0x7f6

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 466
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v3, 0x11

    .line 467
    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    .line 469
    invoke-virtual {v5, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v6, 0x10

    .line 471
    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 472
    const-string v6, "deviceUnlocked"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v6, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 475
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 479
    iget-object p0, p0, Lcom/android/server/EnoteDeviceCheckService;->mEnabledDialogView:Landroid/view/View;

    invoke-interface {v1, p0, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {v0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 485
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDeviceUnlockPopWindow failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final startCountdown()V
    .locals 9

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCountdown mCountDownTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/EnoteDeviceCheckService;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnoteDeviceCheckService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/PowerManager;

    if-nez v8, :cond_0

    .line 640
    const-string/jumbo p0, "powerManager is null, skip count down"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 644
    const-string v1, "CountDown:shutdown"

    invoke-virtual {v8, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xdbba0

    .line 645
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 648
    :cond_1
    new-instance v2, Lcom/android/server/EnoteDeviceCheckService$5;

    const-wide/32 v4, 0x493e0

    const-wide/16 v6, 0x3e8

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/EnoteDeviceCheckService$5;-><init>(Lcom/android/server/EnoteDeviceCheckService;JJLandroid/os/PowerManager;)V

    .line 674
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p0

    iput-object p0, v3, Lcom/android/server/EnoteDeviceCheckService;->mCountDownTimer:Landroid/os/CountDownTimer;

    :cond_2
    return-void
.end method

.method public final stopCountdown()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mCountDownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 681
    iput-object v1, p0, Lcom/android/server/EnoteDeviceCheckService;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 685
    iput-object v1, p0, Lcom/android/server/EnoteDeviceCheckService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    return-void
.end method

.method public final stopWorkerThread()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop worker thread failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnoteDeviceCheckService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 v0, 0x0

    .line 522
    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 523
    iput-object v0, p0, Lcom/android/server/EnoteDeviceCheckService;->mWorkerHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
