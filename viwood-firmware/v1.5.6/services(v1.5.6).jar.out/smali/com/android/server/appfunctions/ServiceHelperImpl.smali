.class public Lcom/android/server/appfunctions/ServiceHelperImpl;
.super Ljava/lang/Object;
.source "ServiceHelperImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/ServiceHelper;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/appfunctions/ServiceHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public resolveAppFunctionService(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 2

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.appfunctions.AppFunctionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object p0, p0, Lcom/android/server/appfunctions/ServiceHelperImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 46
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 47
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_APP_FUNCTION_SERVICE"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    .line 55
    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
