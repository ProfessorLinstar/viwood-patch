.class public Landroid/net/ipmemorystore/OnDeleteStatusListener$1;
.super Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;
.source "OnDeleteStatusListener.java"


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Landroid/net/ipmemorystore/OnDeleteStatusListener$1;->val$listener:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;-><init>()V

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

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;I)V
    .locals 1

    .line 41
    iget-object p0, p0, Landroid/net/ipmemorystore/OnDeleteStatusListener$1;->val$listener:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    if-eqz p0, :cond_0

    .line 42
    new-instance v0, Landroid/net/ipmemorystore/Status;

    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {p0, v0, p2}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;I)V

    :cond_0
    return-void
.end method
