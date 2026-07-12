.class public Landroid/net/NetworkFactoryImpl$1;
.super Ljava/lang/Object;
.source "NetworkFactoryImpl.java"

# interfaces
.implements Landroid/net/NetworkProvider$NetworkOfferCallback;


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkFactoryImpl;


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactoryImpl;)V
    .locals 0

    .line 114
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkNeeded(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-static {p0, p1}, Landroid/net/NetworkFactoryImpl;->-$$Nest$mhandleAddRequest(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public onNetworkUnneeded(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 122
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-static {p0, p1}, Landroid/net/NetworkFactoryImpl;->-$$Nest$mhandleRemoveRequest(Landroid/net/NetworkFactoryImpl;Landroid/net/NetworkRequest;)V

    return-void
.end method
