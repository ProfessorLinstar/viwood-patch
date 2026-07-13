.class public Lcom/android/server/pm/PackageDexOptimizer$1;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"

# interfaces
.implements Lcom/android/server/pm/PackageDexOptimizer$Injector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppHibernationManagerInternal()Lcom/android/server/apphibernation/AppHibernationManagerInternal;
    .locals 0

    .line 151
    const-class p0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/apphibernation/AppHibernationManagerInternal;

    return-object p0
.end method

.method public getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 0

    .line 156
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method
