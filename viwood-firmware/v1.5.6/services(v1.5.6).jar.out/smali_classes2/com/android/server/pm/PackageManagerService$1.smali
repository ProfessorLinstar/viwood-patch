.class public Lcom/android/server/pm/PackageManagerService$1;
.super Lcom/android/server/utils/Watcher;
.source "PackageManagerService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1068
    invoke-direct {p0}, Lcom/android/server/utils/Watcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1071
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->onChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method
