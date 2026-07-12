.class public Landroid/net/NetworkStackClient$NetworkStackConnection;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkStackClient;


# direct methods
.method public constructor <init>(Landroid/net/NetworkStackClient;)V
    .locals 0

    .line 185
    iput-object p1, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/NetworkStackClient;Landroid/net/NetworkStackClient-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;)V

    return-void
.end method


# virtual methods
.method public onModuleServiceConnected(Landroid/os/IBinder;)V
    .locals 2

    .line 189
    iget-object v0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    const-string v1, "Network stack service connected"

    invoke-static {v0, v1}, Landroid/net/NetworkStackClient;->-$$Nest$mlogi(Landroid/net/NetworkStackClient;Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    invoke-static {p0, p1}, Landroid/net/NetworkStackClient;->-$$Nest$mregisterNetworkStackService(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V

    return-void
.end method
