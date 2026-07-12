.class public Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;
.super Ljava/lang/Object;
.source "GrammaticalInflectionBackupHelper.java"


# instance fields
.field public final mCreationTimeMillis:J

.field public final mPackageStates:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;->mCreationTimeMillis:J

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper$StagedData;->mPackageStates:Ljava/util/HashMap;

    return-void
.end method
