.class public Landroid/net/NetworkFactoryLegacyImpl$1;
.super Landroid/net/NetworkProvider;
.source "NetworkFactoryLegacyImpl.java"


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkFactoryLegacyImpl;


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-direct {p0, p2, p3, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 137
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-static {p0, p1}, Landroid/net/NetworkFactoryLegacyImpl;->-$$Nest$mhandleRemoveRequest(Landroid/net/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .locals 0

    .line 132
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/NetworkFactoryLegacyImpl;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    return-void
.end method
