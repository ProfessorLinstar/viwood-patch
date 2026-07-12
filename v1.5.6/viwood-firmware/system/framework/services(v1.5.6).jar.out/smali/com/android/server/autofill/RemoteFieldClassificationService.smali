.class final Lcom/android/server/autofill/RemoteFieldClassificationService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteFieldClassificationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/assist/classification/IFieldClassificationService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$SRGK7lE3fDCJBYUKsKeafRaSEQ0(Lcom/android/server/autofill/RemoteFieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;JLandroid/service/assist/classification/IFieldClassificationService;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/autofill/RemoteFieldClassificationService;->lambda$onFieldClassificationRequest$0(Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;JLandroid/service/assist/classification/IFieldClassificationService;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/autofill/RemoteFieldClassificationService;->logFieldClassificationEvent(JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Autofill"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .locals 7

    .line 79
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.service.assist.classification.FieldClassificationService"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    new-instance v6, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda0;-><init>()V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    .line 79
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 83
    iput-object p2, v1, Lcom/android/server/autofill/RemoteFieldClassificationService;->mComponentName:Landroid/content/ComponentName;

    .line 84
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_0

    .line 85
    sget-object p0, Lcom/android/server/autofill/RemoteFieldClassificationService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "About to connect to serviceName: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public static getComponentName(Ljava/lang/String;IZ)Landroid/util/Pair;
    .locals 5

    if-nez p2, :cond_0

    const p2, 0x100080

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 103
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    int-to-long v3, p2

    invoke-interface {v2, v1, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 106
    sget-object p1, Lcom/android/server/autofill/RemoteFieldClassificationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad service name for flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 113
    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 110
    :goto_1
    sget-object p2, Lcom/android/server/autofill/RemoteFieldClassificationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting service info for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final synthetic lambda$onFieldClassificationRequest$0(Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;JLandroid/service/assist/classification/IFieldClassificationService;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/autofill/RemoteFieldClassificationService$1;-><init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Ljava/lang/ref/WeakReference;J)V

    invoke-interface {p5, p1, v0}, Landroid/service/assist/classification/IFieldClassificationService;->onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    return-void
.end method

.method public final logFieldClassificationEvent(JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V
    .locals 2

    if-nez p3, :cond_0

    .line 246
    invoke-static {}, Lcom/android/server/autofill/FieldClassificationEventLogger;->createLogger()Lcom/android/server/autofill/FieldClassificationEventLogger;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->startNewLogForRequest()V

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetLatencyMillis(J)V

    const/4 p1, 0x1

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetSessionGc(Z)V

    .line 251
    invoke-virtual {p0, p4}, Lcom/android/server/autofill/FieldClassificationEventLogger;->maybeSetRequestStatus(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationEventLogger;->logAndEndEvent()V

    return-void

    .line 254
    :cond_0
    invoke-interface {p3, p1, p2, p5, p4}, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;->logFieldClassificationEvent(JLandroid/service/assist/classification/FieldClassificationResponse;I)V

    return-void
.end method

.method public onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;)V
    .locals 6

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 144
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFieldClassificationRequest request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    new-instance v0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;J)V

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    .line 56
    check-cast p1, Landroid/service/assist/classification/IFieldClassificationService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteFieldClassificationService;->onServiceConnectionStatusChanged(Landroid/service/assist/classification/IFieldClassificationService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/assist/classification/IFieldClassificationService;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 125
    :try_start_0
    invoke-interface {p1, p0, p0}, Landroid/service/assist/classification/IFieldClassificationService;->onConnected(ZZ)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {p1}, Landroid/service/assist/classification/IFieldClassificationService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 130
    :goto_0
    sget-object p1, Lcom/android/server/autofill/RemoteFieldClassificationService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception calling onServiceConnectionStatusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
