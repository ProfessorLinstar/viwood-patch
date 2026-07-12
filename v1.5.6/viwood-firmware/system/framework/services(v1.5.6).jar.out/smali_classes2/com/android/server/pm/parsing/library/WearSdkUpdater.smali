.class public Lcom/android/server/pm/parsing/library/WearSdkUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "WearSdkUpdater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 0

    .line 36
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object p0

    .line 37
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object p2

    .line 39
    const-string/jumbo p3, "wear-sdk"

    invoke-static {p0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 40
    invoke-static {p2, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 41
    :cond_1
    :goto_0
    invoke-static {p1, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->removeLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    return-void
.end method
