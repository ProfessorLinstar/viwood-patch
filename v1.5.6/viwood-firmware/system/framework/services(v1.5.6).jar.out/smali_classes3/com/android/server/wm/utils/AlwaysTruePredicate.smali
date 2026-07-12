.class public Lcom/android/server/wm/utils/AlwaysTruePredicate;
.super Ljava/lang/Object;
.source "AlwaysTruePredicate.java"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lcom/android/server/wm/utils/AlwaysTruePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/server/wm/utils/AlwaysTruePredicate;

    invoke-direct {v0}, Lcom/android/server/wm/utils/AlwaysTruePredicate;-><init>()V

    sput-object v0, Lcom/android/server/wm/utils/AlwaysTruePredicate;->INSTANCE:Lcom/android/server/wm/utils/AlwaysTruePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
