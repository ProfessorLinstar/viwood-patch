.class public abstract Lcom/android/server/AccessibilityManagerInternal;
.super Ljava/lang/Object;
.source "AccessibilityManagerInternal.java"


# static fields
.field public static final NOP:Lcom/android/server/AccessibilityManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/android/server/AccessibilityManagerInternal$1;

    invoke-direct {v0}, Lcom/android/server/AccessibilityManagerInternal$1;-><init>()V

    sput-object v0, Lcom/android/server/AccessibilityManagerInternal;->NOP:Lcom/android/server/AccessibilityManagerInternal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/AccessibilityManagerInternal;
    .locals 1

    .line 103
    const-class v0, Lcom/android/server/AccessibilityManagerInternal;

    .line 104
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AccessibilityManagerInternal;

    if-eqz v0, :cond_0

    return-object v0

    .line 105
    :cond_0
    sget-object v0, Lcom/android/server/AccessibilityManagerInternal;->NOP:Lcom/android/server/AccessibilityManagerInternal;

    return-object v0
.end method


# virtual methods
.method public abstract bindInput()V
.end method

.method public abstract createImeSession(Landroid/util/ArraySet;)V
.end method

.method public abstract isTouchExplorationEnabled(I)Z
.end method

.method public abstract performSystemAction(I)V
.end method

.method public abstract setImeSessionEnabled(Landroid/util/SparseArray;Z)V
.end method

.method public abstract startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
.end method

.method public abstract unbindInput()V
.end method
