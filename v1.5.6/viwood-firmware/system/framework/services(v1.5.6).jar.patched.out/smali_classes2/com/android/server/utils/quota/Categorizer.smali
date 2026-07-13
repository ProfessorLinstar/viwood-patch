.class public interface abstract Lcom/android/server/utils/quota/Categorizer;
.super Ljava/lang/Object;
.source "Categorizer.java"


# static fields
.field public static final SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;


# direct methods
.method public static synthetic $r8$lambda$qiD_Ajv5StXAZdHWcdGVrk65ONA(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 0

    .line 29
    sget-object p0, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    return-void
.end method


# virtual methods
.method public abstract getCategory(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
.end method
