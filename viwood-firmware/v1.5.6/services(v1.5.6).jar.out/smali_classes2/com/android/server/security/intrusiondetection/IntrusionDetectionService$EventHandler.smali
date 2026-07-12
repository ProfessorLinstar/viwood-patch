.class public Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;
.super Landroid/os/Handler;
.source "IntrusionDetectionService.java"


# instance fields
.field public final mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RemoteException"

    const-string v2, "IntrusionDetectionService"

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$mtransport(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Ljava/util/List;)V

    return-void

    .line 179
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$mdisable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 181
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 172
    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$menable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 174
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    :cond_3
    :try_start_2
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$mremoveStateCallback(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 167
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 156
    :cond_4
    :try_start_3
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$maddStateCallback(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception p0

    .line 159
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
