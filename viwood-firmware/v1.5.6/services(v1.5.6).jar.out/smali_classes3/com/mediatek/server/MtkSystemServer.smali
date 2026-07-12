.class public Lcom/mediatek/server/MtkSystemServer;
.super Ljava/lang/Object;
.source "MtkSystemServer.java"


# static fields
.field public static sClassLoader:Ldalvik/system/PathClassLoader;

.field public static sInstance:Lcom/mediatek/server/MtkSystemServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/server/MtkSystemServer;
    .locals 4

    .line 52
    sget-object v0, Lcom/mediatek/server/MtkSystemServer;->sInstance:Lcom/mediatek/server/MtkSystemServer;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "com.mediatek.server.MtkSystemServerImpl"

    .line 54
    const-string v1, "/system_ext/framework/mediatek-services.jar"

    .line 57
    :try_start_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-class v3, Lcom/mediatek/server/MtkSystemServer;

    .line 58
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/mediatek/server/MtkSystemServer;->sClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/server/MtkSystemServer;

    sput-object v0, Lcom/mediatek/server/MtkSystemServer;->sInstance:Lcom/mediatek/server/MtkSystemServer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/mediatek/server/MtkSystemServer;

    invoke-direct {v0}, Lcom/mediatek/server/MtkSystemServer;-><init>()V

    sput-object v0, Lcom/mediatek/server/MtkSystemServer;->sInstance:Lcom/mediatek/server/MtkSystemServer;

    .line 67
    :cond_0
    :goto_0
    sget-object v0, Lcom/mediatek/server/MtkSystemServer;->sInstance:Lcom/mediatek/server/MtkSystemServer;

    return-object v0
.end method


# virtual methods
.method public addBootEvent(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setPrameters(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method

.method public startMtkAlarmManagerService()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public startMtkBootstrapServices()V
    .locals 0

    .line 0
    return-void
.end method

.method public startMtkCoreServices()V
    .locals 0

    .line 0
    return-void
.end method

.method public startMtkOtherServices()V
    .locals 0

    .line 0
    return-void
.end method
