.class public Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;
.super Ljava/lang/Object;
.source "Vpn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIkeSession(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;
    .locals 7

    .line 4586
    new-instance p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    new-instance v0, Landroid/net/ipsec/ike/IkeSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/net/ipsec/ike/IkeSession;-><init>(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;-><init>(Landroid/net/ipsec/ike/IkeSession;)V

    return-object p0
.end method
