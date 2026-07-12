.class public Lcom/android/server/content/SyncManager$12;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 2477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)I
    .locals 0

    .line 2481
    iget-object p0, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p0, Landroid/content/SyncAdapterType;

    iget-object p0, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p1, Landroid/content/SyncAdapterType;

    iget-object p1, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2477
    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    check-cast p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$12;->compare(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)I

    move-result p0

    return p0
.end method
