.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "UnstableSpellbook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

.field public final synthetic val$fScroll:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

.field public final synthetic val$handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;->val$handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;

    iput-object p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;->val$fScroll:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onSelect(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;->val$handler:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$ExploitHandler;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll;->regToExo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;->val$fScroll:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 4
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->doRead()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/UnstableSpellbook$1;->val$fScroll:Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->doRead()V

    :goto_0
    return-void
.end method
