.class public Lcom/mediatek/server/MtkSystemServiceFactory;
.super Ljava/lang/Object;
.source "MtkSystemServiceFactory.java"


# static fields
.field public static lock:Ljava/lang/Object;

.field public static sInstance:Lcom/mediatek/server/MtkSystemServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/server/MtkSystemServiceFactory;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/server/MtkSystemServiceFactory;
    .locals 3

    .line 60
    sget-object v0, Lcom/mediatek/server/MtkSystemServiceFactory;->sInstance:Lcom/mediatek/server/MtkSystemServiceFactory;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "com.mediatek.server.MtkSystemServiceFactoryImpl"

    .line 64
    :try_start_0
    sget-object v1, Lcom/mediatek/server/MtkSystemServer;->sClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x0

    .line 65
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/server/MtkSystemServiceFactory;

    sput-object v0, Lcom/mediatek/server/MtkSystemServiceFactory;->sInstance:Lcom/mediatek/server/MtkSystemServiceFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkSystemServiceFactory"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/mediatek/server/MtkSystemServiceFactory;

    invoke-direct {v0}, Lcom/mediatek/server/MtkSystemServiceFactory;-><init>()V

    sput-object v0, Lcom/mediatek/server/MtkSystemServiceFactory;->sInstance:Lcom/mediatek/server/MtkSystemServiceFactory;

    .line 73
    :cond_0
    :goto_0
    sget-object v0, Lcom/mediatek/server/MtkSystemServiceFactory;->sInstance:Lcom/mediatek/server/MtkSystemServiceFactory;

    return-object v0
.end method


# virtual methods
.method public makeAmsExt()Lcom/mediatek/server/am/AmsExt;
    .locals 0

    .line 90
    new-instance p0, Lcom/mediatek/server/am/AmsExt;

    invoke-direct {p0}, Lcom/mediatek/server/am/AmsExt;-><init>()V

    return-object p0
.end method

.method public makeAnrManager()Lcom/mediatek/server/anr/AnrManager;
    .locals 0

    .line 77
    new-instance p0, Lcom/mediatek/server/anr/AnrManager;

    invoke-direct {p0}, Lcom/mediatek/server/anr/AnrManager;-><init>()V

    return-object p0
.end method

.method public makeAudioServiceExt()Lcom/mediatek/server/audio/AudioServiceExt;
    .locals 0

    .line 94
    new-instance p0, Lcom/mediatek/server/audio/AudioServiceExt;

    invoke-direct {p0}, Lcom/mediatek/server/audio/AudioServiceExt;-><init>()V

    return-object p0
.end method

.method public makePmsExt()Lcom/mediatek/server/pm/PmsExt;
    .locals 0

    .line 102
    new-instance p0, Lcom/mediatek/server/pm/PmsExt;

    invoke-direct {p0}, Lcom/mediatek/server/pm/PmsExt;-><init>()V

    return-object p0
.end method

.method public makePowerHalManager()Lcom/mediatek/server/powerhal/PowerHalManager;
    .locals 0

    .line 81
    new-instance p0, Lcom/mediatek/server/powerhal/PowerHalManager;

    invoke-direct {p0}, Lcom/mediatek/server/powerhal/PowerHalManager;-><init>()V

    return-object p0
.end method

.method public makeWindowManagerDebugger()Lcom/mediatek/server/wm/WindowManagerDebugger;
    .locals 0

    .line 106
    new-instance p0, Lcom/mediatek/server/wm/WindowManagerDebugger;

    invoke-direct {p0}, Lcom/mediatek/server/wm/WindowManagerDebugger;-><init>()V

    return-object p0
.end method

.method public makeWmsExt()Lcom/mediatek/server/wm/WmsExt;
    .locals 0

    .line 98
    new-instance p0, Lcom/mediatek/server/wm/WmsExt;

    invoke-direct {p0}, Lcom/mediatek/server/wm/WmsExt;-><init>()V

    return-object p0
.end method
