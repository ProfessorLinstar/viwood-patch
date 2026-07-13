.class public Lcom/android/server/selinux/SelinuxAuditLogBuilder;
.super Ljava/lang/Object;
.source "SelinuxAuditLogBuilder.java"


# static fields
.field public static final NO_OP_MATCHER:Ljava/util/regex/Matcher;


# instance fields
.field public final mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

.field final mPathMatcher:Ljava/util/regex/Matcher;

.field final mScontextMatcher:Ljava/util/regex/Matcher;

.field final mTcontextMatcher:Ljava/util/regex/Matcher;

.field public mTokens:Ljava/util/Iterator;


# direct methods
.method public static synthetic $r8$lambda$RmLrRR-sNq61_piSupkC9JV2u9c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "\\s+|="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xY0K9yOHYFVyQx0D3n8FFhBOhmU(I)[Ljava/lang/String;
    .locals 0

    .line 105
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-string/jumbo v0, "no-op^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->NO_OP_MATCHER:Ljava/util/regex/Matcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 48
    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    invoke-direct {v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    .line 49
    sget-object v1, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->NO_OP_MATCHER:Ljava/util/regex/Matcher;

    .line 53
    :try_start_0
    const-string/jumbo v2, "u:r:(?<stype>%s):s0(:c)?(?<scategories>((,c)?\\d+)+)*"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 55
    invoke-static {v2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 59
    :try_start_1
    const-string/jumbo v2, "u:object_r:(?<ttype>\\w+):s0(:c)?(?<tcategories>((,c)?\\d+)+)*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :try_start_2
    const-string v3, "\"(?<path>/\\w+(/\\w+)?)(/\\w+)*\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    .line 62
    :goto_0
    const-string v3, "SelinuxAuditLogs"

    const-string v4, "Invalid pattern, setting every matcher to no-op."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_1
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    .line 66
    iput-object v2, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    .line 67
    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method public static toCategories(Ljava/lang/String;)[I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_0
    const-string v0, ",c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;
    .locals 8

    .line 81
    const-string/jumbo v0, "path"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 82
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v6, "tcontext"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_1
    const-string v6, "granted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "{"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "scontext"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "permissive"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "tclass"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move v5, v1

    goto :goto_1

    :sswitch_7
    const-string v6, "denied"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    move v5, v2

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0, v3}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v3

    if-nez v3, :cond_9

    return-object v4

    .line 118
    :cond_9
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v4, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v5, "ttype"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v4, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTcontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v5, "tcategories"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->toCategories(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    goto/16 :goto_0

    .line 86
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iput-boolean v1, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    goto/16 :goto_0

    .line 128
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0, v3}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v4, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mPathMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :pswitch_3
    invoke-static {}, Ljava/util/stream/Stream;->builder()Ljava/util/stream/Stream$Builder;

    move-result-object v3

    move v5, v2

    :goto_2
    if-nez v5, :cond_b

    .line 94
    iget-object v6, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 95
    iget-object v6, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 96
    const-string/jumbo v7, "}"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v5, v1

    goto :goto_2

    .line 99
    :cond_a
    invoke-interface {v3, v6}, Ljava/util/stream/Stream$Builder;->add(Ljava/lang/Object;)Ljava/util/stream/Stream$Builder;

    goto :goto_2

    :cond_b
    if-nez v5, :cond_c

    return-object v4

    .line 105
    :cond_c
    iget-object v4, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    invoke-interface {v3}, Ljava/util/stream/Stream$Builder;->build()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v4, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    goto/16 :goto_0

    .line 108
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0, v3}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->nextTokenMatches(Ljava/util/regex/Matcher;)Z

    move-result v3

    if-nez v3, :cond_d

    return-object v4

    .line 111
    :cond_d
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v4, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v5, "stype"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    .line 112
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v4, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mScontextMatcher:Ljava/util/regex/Matcher;

    const-string/jumbo v5, "scategories"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->toCategories(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    goto/16 :goto_0

    .line 133
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    return-object v4

    .line 136
    :cond_e
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v4, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    goto/16 :goto_0

    .line 122
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    return-object v4

    .line 125
    :cond_f
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iget-object v4, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    goto/16 :goto_0

    .line 89
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    iput-boolean v2, v3, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    goto/16 :goto_0

    .line 142
    :cond_10
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4f988465 -> :sswitch_7
        -0x34682e7c -> :sswitch_6
        -0x1eda3961 -> :sswitch_5
        -0x1d21a224 -> :sswitch_4
        0x7b -> :sswitch_3
        0x346425 -> :sswitch_2
        0x10b4f6bb -> :sswitch_1
        0x4abf8abb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextTokenMatches(Ljava/util/regex/Matcher;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset(Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 74
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mTokens:Ljava/util/Iterator;

    .line 77
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->mAuditLog:Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    invoke-static {p0}, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->-$$Nest$mreset(Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;)V

    return-void
.end method
