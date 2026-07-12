.class public Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;
.super Landroid/util/Pools$SimplePool;
.source "AttributedOp.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 922
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public acquire(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 0

    .line 930
    invoke-virtual {p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    if-eqz p0, :cond_0

    .line 932
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$OpEventProxyInfo;->reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 936
    :cond_0
    new-instance p0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
