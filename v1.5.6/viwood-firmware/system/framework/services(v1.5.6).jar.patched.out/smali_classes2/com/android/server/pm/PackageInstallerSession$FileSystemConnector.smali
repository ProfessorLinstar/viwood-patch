.class public final Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;
.super Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;
.source "PackageInstallerSession.java"


# instance fields
.field public final mAddedFiles:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V
    .locals 1

    .line 2350
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;-><init>()V

    .line 2348
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    .line 2351
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/InstallationFileParcel;

    .line 2352
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    iget-object p2, p2, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 1

    if-eqz p6, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2366
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mdoWriteInternal(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 2368
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2363
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "File name is not in the list of added files."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2360
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incomingFd can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
