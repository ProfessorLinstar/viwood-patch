.class Lcom/android/server/input/PersistentDataStore$Injector;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/input-manager-state.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "input-state"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public finishWrite(Ljava/io/FileOutputStream;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 608
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    return-void

    .line 610
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public openRead()Ljava/io/InputStream;
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$Injector;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method
