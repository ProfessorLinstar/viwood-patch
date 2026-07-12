.class public abstract Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.super Ljava/lang/Object;
.source "PackageSharedLibraryUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 60
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 61
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static removeLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-interface {p0, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    .line 46
    invoke-interface {p0, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void
.end method


# virtual methods
.method public prefixImplicitDependency(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object p0

    .line 77
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-static {p0, v0, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 81
    invoke-interface {p1, v1, p3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void

    .line 82
    :cond_0
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 83
    invoke-interface {p1, v1, p3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_1
    return-void
.end method

.method public prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object p0

    .line 90
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 95
    invoke-interface {p1, p0, p2}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    :cond_0
    return-void
.end method

.method public abstract updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
.end method
