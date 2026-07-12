.class Lcom/android/server/input/InputDataStore$FileInjector;
.super Ljava/lang/Object;
.source "InputDataStore.java"


# instance fields
.field public final mAtomicFileMap:Landroid/util/SparseArray;

.field public final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mAtomicFileMap:Landroid/util/SparseArray;

    .line 339
    iput-object p1, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finishWrite(ILjava/io/FileOutputStream;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    return-void

    .line 354
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public getAtomicFileForUserId(I)Landroid/util/AtomicFile;
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mAtomicFileMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mAtomicFileMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 361
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "input"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 360
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputDataStore$FileInjector;->mAtomicFileMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AtomicFile;

    return-object p0
.end method

.method public openRead(I)Ljava/io/InputStream;
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public startWrite(I)Ljava/io/FileOutputStream;
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method
