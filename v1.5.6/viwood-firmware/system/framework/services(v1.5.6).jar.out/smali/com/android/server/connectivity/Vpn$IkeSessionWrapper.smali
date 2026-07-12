.class public Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;
.super Ljava/lang/Object;
.source "Vpn.java"


# instance fields
.field public final mImpl:Landroid/net/ipsec/ike/IkeSession;


# direct methods
.method public constructor <init>(Landroid/net/ipsec/ike/IkeSession;)V
    .locals 0

    .line 4550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4551
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 0

    .line 4567
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSession;->kill()V

    return-void
.end method

.method public setNetwork(Landroid/net/Network;III)V
    .locals 0

    .line 4557
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/ipsec/ike/IkeSession;->setNetwork(Landroid/net/Network;III)V

    return-void
.end method

.method public setUnderpinnedNetwork(Landroid/net/Network;)V
    .locals 0

    .line 4562
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/IkeSession;->setUnderpinnedNetwork(Landroid/net/Network;)V

    return-void
.end method
