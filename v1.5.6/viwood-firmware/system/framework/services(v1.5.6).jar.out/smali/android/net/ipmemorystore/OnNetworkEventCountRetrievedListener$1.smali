.class public Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;
.super Landroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener$Stub;
.source "OnNetworkEventCountRetrievedListener.java"


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 53
    const-string p0, "b24ee617afb80799cb35b6241f5847d786c649f3"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/16 p0, 0xb

    return p0
.end method

.method public onNetworkEventCountRetrieved(Landroid/net/ipmemorystore/StatusParcelable;[I)V
    .locals 1

    .line 41
    iget-object p0, p0, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;

    if-eqz p0, :cond_0

    .line 42
    new-instance v0, Landroid/net/ipmemorystore/Status;

    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {p0, v0, p2}, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->onNetworkEventCountRetrieved(Landroid/net/ipmemorystore/Status;[I)V

    :cond_0
    return-void
.end method
