.class public Lcom/android/server/devicepolicy/NetworkLogger$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkLogger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/NetworkLogger;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmIsLoggingEnabled(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/server/devicepolicy/NetworkLogger$1;->shouldLogNetworkEvent(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v1, Landroid/app/admin/ConnectEvent;

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmPm(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {p1}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmIsLoggingEnabled(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p9}, Lcom/android/server/devicepolicy/NetworkLogger$1;->shouldLogNetworkEvent(I)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 71
    :cond_1
    new-instance p2, Landroid/app/admin/DnsEvent;

    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {p1}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmPm(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object p1

    .line 72
    invoke-virtual {p1, p9}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    move-object p3, p4

    move-object p4, p5

    move p5, p6

    move-object p6, p1

    invoke-direct/range {p2 .. p8}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    return-void
.end method

.method public final sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmNetworkLoggingHandler(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string/jumbo v2, "network_event"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 97
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmNetworkLoggingHandler(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final shouldLogNetworkEvent(I)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmTargetUserId(Lcom/android/server/devicepolicy/NetworkLogger;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->-$$Nest$fgetmTargetUserId(Lcom/android/server/devicepolicy/NetworkLogger;)I

    move-result p0

    .line 102
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
