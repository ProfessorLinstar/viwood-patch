.class public Lcom/android/server/wm/AppCompatUtils$1;
.super Ljava/lang/Object;
.source "AppCompatUtils.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public mRead:Z

.field public mValue:Z

.field public final synthetic val$supplier:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/server/wm/AppCompatUtils$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mRead:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mRead:Z

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mValue:Z

    .line 67
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mValue:Z

    return p0
.end method
