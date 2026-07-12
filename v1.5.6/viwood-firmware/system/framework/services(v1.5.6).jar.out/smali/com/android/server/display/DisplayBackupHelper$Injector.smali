.class Lcom/android/server/display/DisplayBackupHelper$Injector;
.super Ljava/lang/Object;
.source "DisplayBackupHelper.java"


# instance fields
.field public final mIsDisplayTopologyEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    .line 113
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayTopologyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBackupHelper$Injector;->mIsDisplayTopologyEnabled:Z

    return-void
.end method


# virtual methods
.method public getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;
    .locals 0

    .line 121
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method public final getTopologyFile(I)Landroid/util/AtomicFile;
    .locals 1

    .line 133
    new-instance p0, Landroid/util/AtomicFile;

    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUserTopologyFile(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "topology-state"

    invoke-direct {p0, p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public isDisplayTopologyFlagEnabled()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/server/display/DisplayBackupHelper$Injector;->mIsDisplayTopologyEnabled:Z

    return p0
.end method

.method public readTopologyFile(I)[B
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->getTopologyFile(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object p0

    return-object p0
.end method

.method public writeTopologyFile(I)Landroid/util/AtomicFileOutputStream;
    .locals 1

    .line 129
    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->getTopologyFile(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    return-object v0
.end method
