.class public final Lcom/android/server/permission/access/MutateStateScope;
.super Lcom/android/server/permission/access/GetStateScope;
.source "AccessState.kt"


# instance fields
.field public final newState:Lcom/android/server/permission/access/MutableAccessState;

.field public final oldState:Lcom/android/server/permission/access/AccessState;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 0

    .line 496
    invoke-direct {p0, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 495
    iput-object p1, p0, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    iput-object p2, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    return-void
.end method


# virtual methods
.method public final getNewState()Lcom/android/server/permission/access/MutableAccessState;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    return-object p0
.end method

.method public final getOldState()Lcom/android/server/permission/access/AccessState;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    return-object p0
.end method
