.class public final Lcom/android/server/DockObserver$ExtconStateConfig;
.super Ljava/lang/Object;
.source "DockObserver.java"


# instance fields
.field public final extraStateValue:I

.field public final keyValuePairs:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    .line 143
    iput p1, p0, Lcom/android/server/DockObserver$ExtconStateConfig;->extraStateValue:I

    return-void
.end method
