.class public final Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
.super Ljava/lang/Object;
.source "DefaultCrossProfileIntentFilter.java"


# instance fields
.field public final direction:I

.field public final filter:Lcom/android/server/pm/WatchedIntentFilter;

.field public final flags:I

.field public final letsPersonalDataIntoProfile:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    .line 72
    iput p2, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    .line 73
    iput p3, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    .line 74
    iput-boolean p4, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;IIZLcom/android/server/pm/DefaultCrossProfileIntentFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    return-void
.end method
