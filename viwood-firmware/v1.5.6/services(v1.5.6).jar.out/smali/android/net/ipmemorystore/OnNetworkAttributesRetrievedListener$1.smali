.class public Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;
.super Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;
.source "OnNetworkAttributesRetrievedListener.java"


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 55
    const-string p0, "b24ee617afb80799cb35b6241f5847d786c649f3"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/16 p0, 0xb

    return p0
.end method

.method public onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .locals 1

    .line 41
    iget-object p0, p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Landroid/net/ipmemorystore/Status;

    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Landroid/net/ipmemorystore/NetworkAttributes;

    invoke-direct {p1, p3}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V

    .line 42
    :goto_0
    invoke-interface {p0, v0, p2, p1}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V

    :cond_1
    return-void
.end method
