.class public Lb/a/e;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field public a:J

.field public b:Z

.field public c:J

.field public d:J

.field public e:C

.field public f:Ljava/io/Reader;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lb/a/e;->f:Ljava/io/Reader;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lb/a/e;->b:Z

    .line 5
    iput-boolean p1, p0, Lb/a/e;->g:Z

    .line 6
    iput-char p1, p0, Lb/a/e;->e:C

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lb/a/e;->c:J

    const-wide/16 v0, 0x1

    .line 8
    iput-wide v0, p0, Lb/a/e;->a:J

    .line 9
    iput-wide v0, p0, Lb/a/e;->d:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/a/b;
    .locals 2

    .line 7
    new-instance v0, Lb/a/b;

    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lb/a/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lb/a/e;->g:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lb/a/e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 2
    iput-wide v0, p0, Lb/a/e;->c:J

    .line 3
    iget-wide v0, p0, Lb/a/e;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lb/a/e;->a:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lb/a/e;->g:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb/a/e;->b:Z

    return-void

    .line 6
    :cond_0
    new-instance v0, Lb/a/b;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lb/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()C
    .locals 10

    .line 1
    iget-boolean v0, p0, Lb/a/e;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lb/a/e;->g:Z

    .line 3
    iget-char v1, p0, Lb/a/e;->e:C

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/e;->f:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lb/a/e;->b:Z

    goto :goto_0

    :cond_1
    move v1, v0

    .line 6
    :goto_0
    iget-wide v2, p0, Lb/a/e;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lb/a/e;->c:J

    .line 7
    iget-char v0, p0, Lb/a/e;->e:C

    const/16 v2, 0xd

    const-wide/16 v6, 0x0

    const/16 v3, 0xa

    if-ne v0, v2, :cond_3

    .line 8
    iget-wide v8, p0, Lb/a/e;->d:J

    add-long/2addr v8, v4

    iput-wide v8, p0, Lb/a/e;->d:J

    if-ne v1, v3, :cond_2

    move-wide v4, v6

    .line 9
    :cond_2
    iput-wide v4, p0, Lb/a/e;->a:J

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    .line 10
    iget-wide v2, p0, Lb/a/e;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lb/a/e;->d:J

    .line 11
    iput-wide v6, p0, Lb/a/e;->a:J

    goto :goto_1

    .line 12
    :cond_4
    iget-wide v2, p0, Lb/a/e;->a:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lb/a/e;->a:J

    :goto_1
    int-to-char v0, v1

    .line 13
    iput-char v0, p0, Lb/a/e;->e:C

    return v0

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Lb/a/b;

    invoke-direct {v1, v0}, Lb/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()C
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lb/a/e;->b()C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_1
    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v0

    const/16 v1, 0x27

    const/16 v2, 0x22

    if-eq v0, v2, :cond_13

    if-eq v0, v1, :cond_13

    const/16 v1, 0x2c

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_c

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_2

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lb/a/e;->b()C

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lb/a/e;->a()V

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-static {v0}, Lb/a/c;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Missing value"

    .line 10
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lb/a/e;->a()V

    .line 12
    new-instance v0, Lb/a/c;

    .line 13
    invoke-direct {v0}, Lb/a/c;-><init>()V

    .line 14
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v3

    if-ne v3, v2, :cond_b

    .line 15
    :goto_1
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v2

    if-eqz v2, :cond_a

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_9

    .line 16
    invoke-virtual {p0}, Lb/a/e;->a()V

    .line 17
    invoke-virtual {p0}, Lb/a/e;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_8

    .line 19
    invoke-virtual {p0}, Lb/a/e;->d()Ljava/lang/Object;

    move-result-object v4

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v0, v2}, Lb/a/c;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 21
    invoke-virtual {v0, v2, v4}, Lb/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/c;

    goto :goto_2

    .line 22
    :cond_3
    new-instance v0, Lb/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate key \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v2

    if-eq v2, v1, :cond_6

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_6

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "Expected a \',\' or \'}\'"

    .line 24
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    .line 25
    :cond_6
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v2

    if-ne v2, v3, :cond_7

    goto :goto_3

    .line 26
    :cond_7
    invoke-virtual {p0}, Lb/a/e;->a()V

    goto :goto_1

    :cond_8
    const-string v0, "Expected a \':\' after a key"

    .line 27
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    :cond_9
    :goto_3
    return-object v0

    :cond_a
    const-string v0, "A JSONObject text must end with \'}\'"

    .line 28
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    :cond_b
    const-string v0, "A JSONObject text must begin with \'{\'"

    .line 29
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    .line 30
    :cond_c
    invoke-virtual {p0}, Lb/a/e;->a()V

    .line 31
    new-instance v0, Lb/a/a;

    .line 32
    invoke-direct {v0}, Lb/a/a;-><init>()V

    .line 33
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v3

    if-ne v3, v2, :cond_12

    .line 34
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v2

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_11

    .line 35
    invoke-virtual {p0}, Lb/a/e;->a()V

    .line 36
    :goto_4
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v2

    if-ne v2, v1, :cond_d

    .line 37
    invoke-virtual {p0}, Lb/a/e;->a()V

    .line 38
    iget-object v2, v0, Lb/a/a;->a:Ljava/util/ArrayList;

    sget-object v4, Lb/a/c;->b:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 39
    :cond_d
    invoke-virtual {p0}, Lb/a/e;->a()V

    .line 40
    iget-object v2, v0, Lb/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lb/a/e;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_5
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v2

    if-eq v2, v1, :cond_f

    if-ne v2, v3, :cond_e

    goto :goto_6

    :cond_e
    const-string v0, "Expected a \',\' or \']\'"

    .line 42
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    .line 43
    :cond_f
    invoke-virtual {p0}, Lb/a/e;->c()C

    move-result v2

    if-ne v2, v3, :cond_10

    goto :goto_6

    .line 44
    :cond_10
    invoke-virtual {p0}, Lb/a/e;->a()V

    goto :goto_4

    :cond_11
    :goto_6
    return-object v0

    :cond_12
    const-string v0, "A JSONArray text must start with \'[\'"

    .line 45
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    .line 46
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    :goto_7
    invoke-virtual {p0}, Lb/a/e;->b()C

    move-result v4

    if-eqz v4, :cond_20

    const/16 v5, 0xa

    if-eq v4, v5, :cond_20

    const/16 v6, 0xd

    if-eq v4, v6, :cond_20

    const/16 v7, 0x5c

    if-eq v4, v7, :cond_15

    if-ne v4, v0, :cond_14

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 50
    :cond_15
    invoke-virtual {p0}, Lb/a/e;->b()C

    move-result v4

    if-eq v4, v2, :cond_1f

    if-eq v4, v1, :cond_1f

    const/16 v8, 0x2f

    if-eq v4, v8, :cond_1f

    if-eq v4, v7, :cond_1f

    const/16 v7, 0x62

    if-eq v4, v7, :cond_1e

    const/16 v7, 0x66

    if-eq v4, v7, :cond_1d

    const/16 v7, 0x6e

    if-eq v4, v7, :cond_1c

    const/16 v5, 0x72

    if-eq v4, v5, :cond_1b

    const/16 v5, 0x74

    if-eq v4, v5, :cond_1a

    const/16 v5, 0x75

    const-string v6, "Illegal escape."

    if-ne v4, v5, :cond_19

    const/4 v4, 0x4

    :try_start_0
    new-array v5, v4, [C

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_18

    .line 51
    invoke-virtual {p0}, Lb/a/e;->b()C

    move-result v8

    aput-char v8, v5, v7

    .line 52
    iget-boolean v8, p0, Lb/a/e;->b:Z

    if-eqz v8, :cond_16

    iget-boolean v8, p0, Lb/a/e;->g:Z

    if-nez v8, :cond_16

    const/4 v8, 0x1

    goto :goto_9

    :cond_16
    const/4 v8, 0x0

    :goto_9
    if-nez v8, :cond_17

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_17
    const-string v0, "Substring bounds error"

    .line 53
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    .line 54
    :cond_18
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v5, 0x10

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Lb/a/b;

    invoke-static {v6}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lb/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw v1

    .line 58
    :cond_19
    invoke-virtual {p0, v6}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    throw v0

    :cond_1a
    const/16 v4, 0x9

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 60
    :cond_1b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 61
    :cond_1c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1d
    const/16 v4, 0xc

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1e
    const/16 v4, 0x8

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 64
    :cond_1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_20
    const-string v0, "Unterminated string"

    .line 65
    invoke-virtual {p0, v0}, Lb/a/e;->a(Ljava/lang/String;)Lb/a/b;

    move-result-object v0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, " at "

    .line 1
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lb/a/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/e;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
