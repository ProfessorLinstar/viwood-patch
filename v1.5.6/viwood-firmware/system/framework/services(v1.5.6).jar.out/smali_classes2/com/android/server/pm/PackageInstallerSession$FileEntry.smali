.class public Lcom/android/server/pm/PackageInstallerSession$FileEntry;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# instance fields
.field public final mFile:Landroid/content/pm/InstallationFile;

.field public final mIndex:I


# direct methods
.method public constructor <init>(ILandroid/content/pm/InstallationFile;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    .line 557
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 570
    instance-of v0, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 573
    :cond_0
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 574
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v0}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 575
    invoke-virtual {p0}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {p1}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p1

    .line 574
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getFile()Landroid/content/pm/InstallationFile;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 561
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v0}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {p0}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
