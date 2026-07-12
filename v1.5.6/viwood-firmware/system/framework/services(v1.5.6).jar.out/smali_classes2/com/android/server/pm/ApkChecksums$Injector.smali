.class Lcom/android/server/pm/ApkChecksums$Injector;
.super Ljava/lang/Object;
.source "ApkChecksums.java"


# instance fields
.field public final mContext:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

.field public final mHandlerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

.field public final mIncrementalManagerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

.field public final mPackageManagerInternalProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mContext:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 151
    iput-object p2, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mHandlerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 152
    iput-object p3, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mIncrementalManagerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 153
    iput-object p4, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mPackageManagerInternalProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mHandlerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    invoke-interface {p0}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public getIncrementalManager()Landroid/os/incremental/IncrementalManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mIncrementalManagerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    invoke-interface {p0}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/server/pm/ApkChecksums$Injector;->mPackageManagerInternalProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    invoke-interface {p0}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method
