.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

.field public static final TAG:Ljava/lang/String; = "PackageBackwardCompatibility"


# instance fields
.field public final mBootClassPathContainsATB:Z

.field public final mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v1, Lcom/android/server/pm/parsing/library/WearSdkUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/WearSdkUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->addUpdaterForAndroidTestBase(Ljava/util/List;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 72
    new-instance v2, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;

    .line 73
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getSharedLibraries()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;-><init>(Landroid/util/ArrayMap;)V

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 75
    new-array v2, v2, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 77
    new-instance v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-direct {v2, v1, v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;-><init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V

    sput-object v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    return-void
.end method

.method public constructor <init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 125
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    .line 126
    iput-object p2, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    return-void
.end method

.method public static addUpdaterForAndroidTestBase(Ljava/util/List;)Z
    .locals 5

    .line 92
    const-string v0, "android.content.pm.AndroidTestBaseUpdater"

    const/4 v1, 0x0

    .line 94
    :try_start_0
    const-class v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 96
    :cond_0
    sget-object v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    sget-object v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignoring"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_1

    .line 102
    new-instance v0, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_1
    new-instance v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return v1
.end method

.method public static bootClassPathContainsATB()Z
    .locals 1

    .line 154
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    iget-boolean v0, v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .locals 1

    .line 111
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    return-object v0
.end method

.method public static modifySharedLibraries(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 1

    .line 138
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    return-void
.end method


# virtual methods
.method public getPackageUpdaters()[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    return-object p0
.end method

.method public updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 3

    .line 144
    iget-object p0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 145
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
