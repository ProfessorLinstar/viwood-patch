.class public Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "ApexSharedLibraryUpdater.java"


# instance fields
.field public final mSharedLibraries:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    return-void
.end method

.method public static isCodename(Ljava/lang/String;)Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static isTargetSdkAtMost(ILjava/lang/String;)Z
    .locals 3

    .line 74
    invoke-static {p1}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->isCodename(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/16 p1, 0x2710

    if-ge p0, p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 77
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p0, p1, :cond_2

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method public updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 1

    .line 48
    iget-object p2, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->updateSharedLibraryForPackage(Lcom/android/server/SystemConfig$SharedLibraryEntry;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateSharedLibraryForPackage(Lcom/android/server/SystemConfig$SharedLibraryEntry;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .locals 2

    .line 56
    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getTargetSdkVersion()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 57
    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->isTargetSdkAtMost(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 60
    invoke-static {v0}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-boolean p0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->canBeSafelyIgnored:Z

    if-eqz p0, :cond_1

    .line 69
    iget-object p0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->removeLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
