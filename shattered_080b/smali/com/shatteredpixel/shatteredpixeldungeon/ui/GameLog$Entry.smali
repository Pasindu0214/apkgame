.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;
.super Ljava/lang/Object;
.source "GameLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public color:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;->text:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/GameLog$Entry;->color:I

    return-void
.end method
