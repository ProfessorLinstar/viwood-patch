.class public Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;
.super Landroid/debug/AdbManagerInternal;
.source "AdbService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method public static synthetic $r8$lambda$mxHjsfzVGaenlkCb9wBh4XrNQKM(Lcom/android/server/adb/AdbService;ZB)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/adb/AdbService;->-$$Nest$msetAdbdEnabledForTransport(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Landroid/debug/AdbManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/adb/AdbService;Lcom/android/server/adb/AdbService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;)V

    return-void
.end method


# virtual methods
.method public getAdbKeysFile()Ljava/io/File;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAdbTempKeysFile()Ljava/io/File;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public isAdbEnabled(B)Z
    .locals 2

    if-nez p1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmIsAdbUsbEnabled(Lcom/android/server/adb/AdbService;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 128
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmIsAdbWifiEnabled(Lcom/android/server/adb/AdbService;)Z

    move-result p0

    return p0

    .line 130
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAdbEnabled called with unimplemented transport type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyKeyFilesUpdated()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->notifyKeyFilesUpdated()V

    return-void
.end method

.method public registerTransport(Landroid/debug/IAdbTransport;)V
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmTransports(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startAdbdForTransport(B)V
    .locals 3

    .line 151
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 152
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    .line 151
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopAdbdForTransport(B)V
    .locals 3

    .line 157
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    .line 158
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    .line 157
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterTransport(Landroid/debug/IAdbTransport;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {p0}, Lcom/android/server/adb/AdbService;->-$$Nest$fgetmTransports(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
