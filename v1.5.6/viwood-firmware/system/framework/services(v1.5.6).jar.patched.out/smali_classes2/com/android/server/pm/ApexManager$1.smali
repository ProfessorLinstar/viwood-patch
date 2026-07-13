.class public Lcom/android/server/pm/ApexManager$1;
.super Landroid/util/Singleton;
.source "ApexManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/server/pm/ApexManager;
    .locals 0

    .line 84
    new-instance p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-direct {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$1;->create()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    return-object p0
.end method
