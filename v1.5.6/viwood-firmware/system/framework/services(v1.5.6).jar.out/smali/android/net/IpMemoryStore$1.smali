.class public Landroid/net/IpMemoryStore$1;
.super Landroid/net/IIpMemoryStoreCallbacks$Stub;
.source "IpMemoryStore.java"


# instance fields
.field public final synthetic this$0:Landroid/net/IpMemoryStore;


# direct methods
.method public constructor <init>(Landroid/net/IpMemoryStore;)V
    .locals 0

    .line 46
    iput-object p1, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    invoke-direct {p0}, Landroid/net/IIpMemoryStoreCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 59
    const-string p0, "b24ee617afb80799cb35b6241f5847d786c649f3"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/16 p0, 0xb

    return p0
.end method

.method public onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 49
    iget-object p0, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    invoke-static {p0}, Landroid/net/IpMemoryStore;->-$$Nest$fgetmService(Landroid/net/IpMemoryStore;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
