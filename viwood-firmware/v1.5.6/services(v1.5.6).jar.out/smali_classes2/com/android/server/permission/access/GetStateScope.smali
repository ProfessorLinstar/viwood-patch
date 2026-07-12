.class public Lcom/android/server/permission/access/GetStateScope;
.super Ljava/lang/Object;
.source "AccessState.kt"


# instance fields
.field public final state:Lcom/android/server/permission/access/AccessState;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessState;)V
    .locals 0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    return-void
.end method


# virtual methods
.method public final getState()Lcom/android/server/permission/access/AccessState;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    return-object p0
.end method
