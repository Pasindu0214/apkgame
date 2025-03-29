.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "ChaliceOfBlood.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/ChaliceOfBlood;->prick(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V

    :cond_0
    return-void
.end method
