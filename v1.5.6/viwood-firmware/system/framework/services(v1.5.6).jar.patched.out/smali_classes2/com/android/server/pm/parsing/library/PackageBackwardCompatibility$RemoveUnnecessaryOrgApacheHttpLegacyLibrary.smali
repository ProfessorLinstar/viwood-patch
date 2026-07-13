.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 0

    .line 189
    const-string/jumbo p0, "org.apache.http.legacy"

    invoke-static {p1, p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->removeLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    return-void
.end method
